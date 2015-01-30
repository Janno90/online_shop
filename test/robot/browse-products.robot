*** Settings ***

Resource          resources/${ENVIRONMENT}.robot
Suite Setup       Open Browser And Open Frontpage
Suite Teardown    Close Browser


*** Test Cases ***

Browse Products Via Categories
