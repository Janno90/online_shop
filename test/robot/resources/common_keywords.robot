*** Keywords ***
Select Category  [Arguments]  ${selector}
  Click Link  css=#categories li:nth-child(${selector}) a

Select Product  [Arguments]  ${selector}
  ${product_name} =  Get Text  css=#products p:nth-child(${selector}) a
  Click Link  css=#products p:nth-child(${selector}) a
  [return]  ${product_name}
