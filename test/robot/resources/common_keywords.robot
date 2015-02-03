*** Keywords ***
Select Product  [Arguments]  ${selector}
  ${product_name} =  Get Text  css=#products p:nth-child(${selector}) a
  Click Link  css=#products p:nth-child(${selector}) a
  [return]  ${product_name}

Add Valid Product To Cart
  Click '${valid_category}' Category
  Select Product  1
  Add Current Product To Cart

Add Current Product To Cart
  Click Link  link=Add to cart

Go To Cart
  Click Link  css=#cart a:first-child

Confirm Subtitle  [Arguments]  ${text}
  ${subtitle} =  Get Text  id=subtitle
  Should End With  ${text}  ${subtitle}

Confirm Status Message  [Arguments]  ${text}
  Element Should Contain  css=#flash div  ${text}

Click '${category}' Category
  Click Link  css=#categories a.${category}
