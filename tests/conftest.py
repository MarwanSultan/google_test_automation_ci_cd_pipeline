# conftest.py
import pytest
import requests

BASE_URL = "https://jsonplaceholder.typicode.com"


@pytest.fixture(scope="session")
def base_url():
    return BASE_URL


@pytest.fixture(scope="function")
def client():
    session = requests.Session()
    session.headers.update({"Content-Type": "application/json"})
    yield session
    session.close()


# ----------- TEST SETUP & TEARDOWN ------------ #

@pytest.fixture(scope="function", autouse=True)
def setup_and_teardown(client, base_url):
    print("\n[Setup] Preparing test environment...")
    # Example: Call setup endpoint if available
    # client.post(f"{base_url}/test/setup", json={"reset": True})

    yield

    print("[Teardown] Cleaning up test environment...")
    # Example: Call teardown endpoint if available
    # client.post(f"{base_url}/test/teardown", json={"cleanup": True})
