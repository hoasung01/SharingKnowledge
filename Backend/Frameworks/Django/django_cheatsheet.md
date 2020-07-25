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

###exceptions
  - https://docs.djangoproject.com/en/3.0/ref/exceptions/

###logging levels
  1. CRITICAL (Problems that crash the application)
  2. ERROR (Problems that break the current function)
  3. WARNING (Unexpected or undesirable events)
  4. INFO (Interesting runtime events. Notice that things are working)
  5. DEBUG (Detail for debugging in development and diagnosing problems)

###4 basic classes in logging
  1. Loggers
  2. Handlers
  3. Filters
  4. Formatters
