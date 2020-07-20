```html
  - run migrate
    `python manage.py migrate`

  - python shell
    `./manage.py shell`

  - run command-line client for the current database
    `python manage.py dbshell`

  - run tests
    `python manage.py test <folderA.folderB.file_name>`
  - run server
    `python manage.py runserver 0.0.0.0:8000`
```


###modules
  1. `import six`
  - Six: Python 2 and 3 Compatibility Library
  [docs](https://six.readthedocs.io/)

###templates
  1. {% extends %}
  2. {% block %} {% endblock %}
  3. {% include %}