*** Settings ***

Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Open Browser And Open Frontpage
Suite Teardown    Close Browser


*** Test Cases ***

Browse Categories
  Select Category  2
  Confirm Category Subtitle  2
  Select Category  1
  Confirm Category Subtitle  1


*** Keywords ***
Confirm Category Subtitle  [Arguments]  ${selector}
  ${category_name} =  Get Text  css=#categories li:nth-child(${selector}) a
  Wait Until Keyword Succeeds  3 s  .5 s  Confirm Subtitle  ${category_name}

Confirm Subtitle  [Arguments]  ${text}
  ${subtitle} =  Get Text  id=subtitle
  Should End With  ${text}  ${subtitle}
