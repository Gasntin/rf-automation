*** Settings ***
Library     ../../custom_libraries/api_request.py
Library     Collections


*** Keywords ***
I send a GET request to single user with id "${id}"
    Set Suite Variable    ${id}

    ${response}=    Get User    ${id}
    Set Suite Variable    ${statusCode}    ${response.status_code}
    Set Suite Variable    ${response}    ${response.json()}

the response status code should be "${status_code}"
    Should Be Equal As Integers    ${statusCode}    ${status_code}

the response data user should contain the correct user details
    ${data}=    Get From Dictionary    ${response}    data
    Set Local Variable    ${data}

    Should Be Equal As Integers    ${data['id']}    ${id}
    Should Be Equal As Strings    ${data['first_name']}    Janet
    Should Be Equal As Strings    ${data['last_name']}    Weaver
    Should Be Equal As Strings    ${data['email']}    janet.weaver@reqres.in
    Should Be Equal As Strings    ${data['avatar']}    https://reqres.in/img/faces/2-image.jpg

the response data support should contain the correct user details
    ${support}=    Get From Dictionary    ${response}    support
    Set Suite Variable    ${support}

    Should Be Equal As Strings
    ...    ${support['url']}
    ...    https://contentcaddy.io?utm_source=reqres&utm_medium=json&utm_campaign=referral
    Should Be Equal As Strings
    ...    ${support['text']}
    ...    Tired of writing endless social media content? Let Content Caddy generate it for you.

the response data should be empty body
    Length Should Be    ${response}    0
