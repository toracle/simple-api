# -*- coding: utf-8 -*-

from typing import Optional

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def hello_world():
    return {"detail": "Hello World"}
