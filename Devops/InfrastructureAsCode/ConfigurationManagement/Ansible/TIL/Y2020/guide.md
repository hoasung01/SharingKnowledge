1. create an empty project
  - mkdir <your_ansible_project>

2. create 3 empty directories inside
  - inventory/
    + local
    ```html
      [local]
      127.0.0.1 ansible_connection=local
    ```

    + ec2
    ```html
      [jumpbox]
    ```
  - roles/
    ```html
      - navigate to this directory then run:

      ansible-galaxy init create-ec2-instances
    ```
  - keys/


[resouce](https://davelms.medium.com/use-ansible-to-create-and-configure-ec2-instances-on-aws-cfbb0ed019bf)