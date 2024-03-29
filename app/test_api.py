from fastapi.testclient import TestClient
from .api import app

client = TestClient(app)

def test_read_endpoint():
    response = client.get("/")
    assert response.status_code == 201
    assert response.json() == {"Message": "hello World"}

def test_about_endpoint():
    response = client.get("/about")
    assert response.status_code == 500
    assert response.json() == {"About": "Vai dar bom"}