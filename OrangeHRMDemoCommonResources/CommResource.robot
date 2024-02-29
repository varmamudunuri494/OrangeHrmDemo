*** Settings ***
Library                         QForce
Library                         String
*** Variables ***
# IMPORTANT: Please read the readme.txt to understand needed variables and how to handle them!!
${BROWSER}                      chrome
${username}                     2emailvarma@gmail.com
#${login_url}                    https://d2w000001nzjnea4-dev-ed.my.salesforce.com
${Home_url}                     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Setup Browser
    # Setting search order is not really needed here, but given as an example
    # if you need to use multiple libraries containing keywords with duplicate names
    Set Library Search Order    QForce                      QWeb
    Open Browser                about:blank                 ${BROWSER}
    SetConfig                   LineBreak                   ${EMPTY}                    #\ue000
    SetConfig                   DefaultTimeout              20s                         #sometimes salesforce is slow
    Evaluate                    random.seed()               random                      # initialize random generator
End suite
    Close All Browsers
Home
    [Documentation]             Navigate to homepage, login if needed
    GoTo                        ${home_url}