*** Settings ***
Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Run Keywords  Open Browser And Open Frontpage
Suite Teardown    Close Browser


*** Test Cases ***

User Can Add Products To Cart
  Select Category  1
  ${product_name} =  Select Product  1
  Add Product To Cart
  Go To Cart
  Cart Contains Product  ${product_name}

*** Keywords ***

Add Product To Cart
  Click Link  link=Add to cart

Go To Cart
  Click Link  css=#cart a:first-child

Cart Contains Product  [Arguments]  ${product_name}
  Table Should Contain  css=table#products  ${product_name}
