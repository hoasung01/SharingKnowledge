[Deploy webpacker to run on heroku] (https://github.com/rails/webpacker/blob/master/docs/deployment.md)
```html
    In order for your Webpacker app to run on Heroku, you'll need to do a bit of configuration before hand.


    heroku create my-webpacker-heroku-app
    heroku addons:create heroku-postgresql:hobby-dev
    heroku buildpacks:add heroku/nodejs
    heroku buildpacks:add heroku/ruby
    git push heroku master
```