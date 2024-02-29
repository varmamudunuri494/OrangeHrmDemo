*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../OrangeHRMDemoCommonResources/CommResource.robot

*** Test Cases ***
To test TimesofIndia
    [Tags]             OrangeHRM Main Site
    [Documentation]    Automating the Orange HRM Main Site
    Appstate           Home
    TypeText           Username                    Admin
    TypeText           Password                    admin123
    ClickText          Login
    ClickText          Admin
    TypeText           Username                    Admin
    #TypeText          //div[@class\='oxd-select-text oxd-select-text--active']//div[@class\='oxd-select-text-input']    Admin
    ClickText          /html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]    Admin
    Sleep              2s
    ClickText          Admin
    ClickText          Search                      partial_match=False