*** Settings ***
Resource    ../resources/api/create_user_resource.robot
Resource    ../resources/api/get_user_resource.robot


*** Test Cases ***
Successfully get single user
    When I send a GET request to single user with id "2"
    Then the response status code should be "200"
    And the response data user should contain the correct user details
    And the response data support should contain the correct user details

Verify get not exist user
    When I send a GET request to single user with id "99999"
    Then the response status code should be "404"
    And the response data should be empty body

Successfully create a new user
    When I send a POST request to create a new user with name "Ega Septian" and job "SDET"
    Then the response status code should be "200"
    And the response should contain the name "Ega Septian"
    And the response should contain the job "SDET"
    And the response should contain a non-empty id
    And the response should contain a non-empty createdAt
