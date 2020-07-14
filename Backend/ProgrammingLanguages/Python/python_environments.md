[Simple Python version management](https://github.com/pyenv/pyenv)
[Pyenv virutalenv](https://github.com/pyenv/pyenv-virtualenv)


###Issues

```html
   pyenv install 3.4.10
   python-build: use openssl from homebrew
   python-build: use readline from homebrew
   Downloading Python-3.4.10.tar.xz...
   -> https://www.python.org/ftp/python/3.4.10/Python-3.4.10.tar.xz
   Installing Python-3.4.10...
   python-build: use readline from homebrew
   python-build: use zlib from xcode sdk
   ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?

   => solution: switch to use `pyenv install 3.6`
```

```html
   pyenv: pip: command not found

```

###Learnings
I. PyPI packages not in the standard library:
   1. virtualenv
   2. pyenv
   3. pyenv-virtualenv
   4. virtualenvwrapper
   5. pyenv-virtualenvwrapper
   6. pipenv
II. Standard library:
   1. pyvenv
   2. venv

#### Recommendation for beginners: virtualenv, pip
