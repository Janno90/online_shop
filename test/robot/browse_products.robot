*** Settings ***
Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Open Browser And Open Frontpage
Suite Teardown    Close Browser

*** Test Cases ***
Browse Categories
  Click 'Cameras' Category
  Confirm 'Cameras' Page Subtitle
  Click 'Games' Category
  Confirm 'Games' Page Subtitle

*** Keywords ***
Confirm '${category}' Page Subtitle
  Wait Until Keyword Succeeds  5 s  .5 s  Confirm Subtitle  ${category}
