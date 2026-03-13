from fastapi import FastAPI
import os

app = FastAPI()

SERVICE_NAME = os.getenv("SERVICE_NAME", "default-service")

@app.get("/")
def root():
    return {
        "service": SERVICE_NAME,
        "message": "hello from github actions lab"
    }

@app.get("/health")
def health():
    return {"status": "ok"}