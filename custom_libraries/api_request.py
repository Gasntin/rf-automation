import requests
import os
from dotenv import load_dotenv

load_dotenv()
BASE_URL = os.getenv("BASE_URL")

def create_user(name, job):
    """Creates a user and returns the response as a JSON object."""
    url = f"{BASE_URL}/api/users"
    response = requests.post(url, json={"name": name, "job": job})
    return response.json()

def get_user(userID):
    """Get a user and returns the response as a JSON object."""
    url = f"{BASE_URL}/api/users/{userID}"
    response = requests.get(url)
    return response

def get_base_url():
    return os.getenv("BASE_URL")