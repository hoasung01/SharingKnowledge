[rails-6-aws-elastic-beanstalk](https://www.honeybadger.io/blog/rails-6-aws-elastic-beanstalk/)

1. eb init
  ( if you have multiple aws credentails: eb init --profile <your_aws_profile_name> )
  - when this command finish you’ll end up with a file called `.elasticbeanstalk/config.yml`
    which has some default configuration

2. eb create
  ( if you have multiple aws credentails: eb create --profile <your_aws_profile_name> )
  - For load balancer type, choose application.
  - This step will take a long time. When it finishes, health will probably be “Severe”.
    Ignore this.

3. Set up SECRET_KEY_BASE
  $ eb setenv SECRET_KEY_BASE=$(rails secret)


4. Set up ebextensions
  ( you can add files in an .ebextensions directory at your project root )

  a) `.ebextensions/01_ruby.config`

  ```ruby
    packages:
    yum:
      git: []

    container_commands:
      01_assets:
        command: RAILS_ENV=production bundle exec rake assets:precompile
        leader_only: true
  ```

  b) `.ebextensions/02_yarn.config`

  ```ruby
    commands:
      01_node_get:
        cwd: /tmp
        command: 'sudo curl --silent --location https://rpm.nodesource.com/setup_13.x | sudo bash -'

      02_node_install:
        cwd: /tmp
        command: 'sudo yum -y install nodejs'

      03_yarn_get:
        cwd: /tmp
        # don't run the command if yarn is already installed (file /usr/bin/yarn exists)
        test: '[ ! -f /usr/bin/yarn ] && echo "yarn not installed"'
        command: 'sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo'

      04_yarn_install:
        cwd: /tmp
        test: '[ ! -f /usr/bin/yarn ] && echo "yarn not installed"'
        command: 'sudo yum -y install yarn'
  ```

  c) `.ebextensions/gem_install_bundler.config`

  ```ruby
    files:
      # Runs before `./10_bundle_install.sh`:
      "/opt/elasticbeanstalk/hooks/appdeploy/pre/09_gem_install_bundler.sh" :
        mode: "000775"
        owner: root
        group: users
        content: |
          #!/usr/bin/env bash

          EB_APP_STAGING_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k app_staging_dir)
          EB_SCRIPT_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k script_dir)
          # Source the application's Ruby
          . $EB_SCRIPT_DIR/use-app-ruby.sh

          cd $EB_APP_STAGING_DIR
          echo "Installing compatible bundler"
          gem install bundler -v 2.0.2
  ```

5. Deploy the application
  $ eb deploy

