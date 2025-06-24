def test_api_status(client, base_url):
    response = client.get(f"{base_url}/posts/1")  # This endpoint returns JSON
    assert response.status_code == 200
    json_data = response.json()
    assert "id" in json_data
    assert json_data["id"] == 1
