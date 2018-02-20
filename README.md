# NLU Utils

[![Build Status](https://jenkins2.snips.ai/buildStatus/icon?job=SDK/nlu-utils/master)](https://jenkins2.snips.ai/job/SDK/job/nlu-utils/view/Branches/job/master)

Rust library for NLU utils with wrappers in other languages

## Python wrapper

### Install for production use

Create a `pip.conf` file with the following content (get user/password from @franblas):

```config
[global]
index = https://<user>:<password>@nexus-repository.snips.ai/repository/pypi-internal/pypi
index-url = https://pypi.python.org/simple/
extra-index-url = https://<user>:<password>@nexus-repository.snips.ai/repository/pypi-internal/simple
```

Install the package with pip

```bash
pip install nlu_utils
```

### Install for development

Create a virtual env and activate it

```bash
virtualenv venv
. venv/bin/activate
```

Install the package

```bash
pip install -r requirements.txt
pip install -e .
```