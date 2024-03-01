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
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div/div[1]/div    Yes
    Sleep              3s
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div/div[6]/div/button[2]
    Sleep              3s
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div     Peter Anderson
    Sleep              3s
    ClickText          Peter Anderson
    ClickText          Save

    #TypeText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input    nalim
    #ClickText         //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]
    #ClickText         ESS
    #Sleep             10s
    #ClickText         Search
    #ClickText         Leave
    #TypeText          From Date                   2024-05-03
    #TypeText          To Date                     2024-10-08
