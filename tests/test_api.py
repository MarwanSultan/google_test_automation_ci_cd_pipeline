import requests

def test_google_home_status():
    response = requests.get("https://www.google.com")
    assert response.status_code == 200
    
