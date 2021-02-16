# Create first project

We will now create our first project with poetry.

`poetry new myapp`{{execute}}

This will create the myapp directory with the following content:

`tree myapp`{{execute}}

```
myapp
├── myapp
│   └── __init__.py
├── pyproject.toml
├── README.rst
└── tests
    ├── __init__.py
    └── test_myapp.py
```

Enter project

`cd myapp`{{execute}}


The `pyproject.toml` file is what is the most important here.
This will orchestrate your project and its dependencies.

For now, it looks like this:

`cat pyproject.toml`{{execute}}

```toml
[tool.poetry]
name = "myapp"
version = "0.1.0"
description = ""
authors = ["Katacoda Scenario <scenario@katacoda.com>"]

[tool.poetry.dependencies]
python = "^3.8"

[tool.poetry.dev-dependencies]
pytest = "^5.2"

[build-system]
requires = ["poetry-core>=1.0.0"]
build-backend = "poetry.core.masonry.api"
```
