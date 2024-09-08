import requests

def test_get_schedule():
    response = requests.get('http://localhost:5000/schedules')
    assert response.status_code != 500
