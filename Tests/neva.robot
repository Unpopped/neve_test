*** Settings ***
Library  Browser


*** Variables ***
${URL}  http://localhost/wordpress/
${BROWSER}  firefox


*** Test Cases ***
Open the browser and the website and check if you can access the article "Hello world!"
    Open Browser  ${URL}  ${BROWSER}
    Click  text="Hello world!"  left  2
    Wait Until Network Is Idle
    Close Browser


*** Keywords ***
