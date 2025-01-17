*** Settings ***
Library     ../../custom_libraries/api_request.py


*** Keywords ***
I send a POST request to create a new user with name "${name}" and job "${job}"
    ${response}=    Create User    ${name}    ${job}
    Set Suite Variable    ${response}

the response should contain the name "${expected_name}"
    Should Be Equal    ${response['name']}    ${expected_name}

the response should contain the job "${expected_job}"
    Should Be Equal    ${response['job']}    ${expected_job}

the response should contain a non-empty id
    Should Not Be Empty    ${response['id']}

the response should contain a non-empty createdAt
    Should Not Be Empty    ${response['createdAt']}
