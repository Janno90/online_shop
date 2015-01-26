*** Settings ***

Library     Selenium2Library  0  implicit_wait=10
Resource    common_keywords.robot
Resource    common_variables.robot

*** Variables ***

${BROWSER}    firefox
${DOMAIN}     localhost
${PROTOCOL}   http
${PORT}       3000
${SERVER}     ${PROTOCOL}://${DOMAIN}:${PORT}

*** Keywords ***

Open Browser And Open Frontpage
  Open Browser  ${SERVER}  browser=${BROWSER}
  Maximize Browser Window
  Location Should Be  ${SERVER}/
