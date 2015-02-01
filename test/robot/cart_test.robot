*** Settings ***
Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Open Browser And Open Frontpage
Suite Teardown    Close Browser


*** Test Cases ***

User Can Add Products To Cart
  Select Category  1
  ${product_name} =  Select Product  1
  Add Current Product To Cart
  Go To Cart
  Cart Contains Product  ${product_name}

*** Keywords ***



Cart Contains Product  [Arguments]  ${product_name}
  Table Should Contain  css=table#products  ${product_name}
