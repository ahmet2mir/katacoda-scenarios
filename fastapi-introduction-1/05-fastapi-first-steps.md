# FastApi first steps

The simplest FastAPI file could look like this:

<pre class="file" data-filename="myapp/main.py" data-target="replace">
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}
</pre>

`cat main.py`{{execute}}

Run the live server:

`poetry run uvicorn main:app --reload --host 0.0.0.0 --port 8000`{{execute}}

The command `uvicorn main:app` refers to:

* **main**: the file main.py (the Python "module").
* **app**: the object created inside of main.py with the line app = FastAPI().
* **--reload**: make the server restart after code changes. Only use for development.
* **--host 0.0.0.0**: for this tutorial only, we bind on all interfaces to allow public url. Don't use it on your server.
* **--port 8000**: bind on 8000 port

Open your browser at
https://[[HOST_SUBDOMAIN]]-8000-[[KATACODA_HOST]].environments.katacoda.com

Or at http://127.0.0.1:8000 if you run this at home.

You will see the JSON response as:

```json
{"message": "Hello World"}
```

