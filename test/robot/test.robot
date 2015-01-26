*** Settings ***
Resource        resources/${ENVIRONMENT}.robot
Suite Setup     Open Browser And Open Frontpage
Suite Teardown  Close Browser

*** Test Cases ***
Test
  sleep  2 s
