*** Settings ***
Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Open Browser And Open Frontpage
Suite Teardown    Close Browser

*** Test Cases ***

Ordering Items
  Add Valid Product To Cart
  Go To Cart
  Go To Order Page
  Confirm Subtitle  Order
  Fill Order Form Succesfully
  Send Order
  Confirm Status Message  Order has been sent!




*** Keywords ***
Go To Order Page
  Click Link  link=Order

Fill Order Form Succesfully
  Fill Name Field  Maija Meikäläinen
  Fill Street Address Field  Testikatu 12
  Fill City Field  Helsinki
  Fill Postcode Field  00100
  Fill Telephone Field  050-1234567

Send Order
  Click Button  name=commit

Fill Name Field  [Arguments]  ${name}
  Input Text  id=order_name  ${name}

Fill Street Address Field  [Arguments]  ${street_address}
  Input Text  id=order_street_address  ${street_address}

Fill City Field  [Arguments]  ${city}
  Input Text  id=order_city  ${city}

Fill Postcode Field  [Arguments]  ${postcode}
  Input Text  id=order_postcode  ${postcode}

Fill Telephone Field  [Arguments]  ${Telephone}
  Input Text  id=order_telephone  ${Telephone}
