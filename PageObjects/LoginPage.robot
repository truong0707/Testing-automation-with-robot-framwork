# Đây là nơi để tương tác với UI
*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}             https://oldsailor.com.vn/nam.html?gclid=EAIaIQobChMIo93wt8Cd9wIV3plmAh38Egm7EAAYAiAAEgKGpvD_BwE
${txtUsername}     //*[@id="login_user"]
${txtPassword}     //*[@id="password"]
${btnLogin}        //*[@id="frmLogin"]/div[4]/button
${btnOpenTabUser}  css=span.icon1
${btnNavigate}     //*[@id="vnt-header"]/div[1]/div[3]/div[2]/div[2]/div[1]/ul/li[1]/a
${errortext}       //*[@id="vnt-content"]/div/div/div[3]/div/div[1]
${checkbox}        //*[@id="ch_remember"]

*** Keywords ***
open page
    open browser                    ${url}                 Chrome
    maximize browser window     # phóng to trình duyệt
delayScreen
    [Arguments]                     ${second}
    Sleep                           ${second}
open tab user
    [Arguments]                     ${tabuser}
    press keys                      ${btnOpenTabUser}      ${tabuser}
navigateLoginPage
    [Arguments]                     ${navigatelogin}
    press keys                      ${btnNavigate}         ${navigatelogin}
enter username
    # locater input + text mình muốn nhập
    [Arguments]                     ${username}
    input text                      ${txtUsername}         ${username}
enter password
    [Arguments]                     ${password}
    input text                      ${txtPassword}         ${password}
checkbox
    Page Should Contain Checkbox    ${checkbox}
    select checkbox                 ${checkbox}
    checkbox should be selected     ${checkbox}
clickLoginButton
    [Arguments]                     ${logintext}
    press keys                      ${btnLogin}            ${logintext}
verify Error text
   wait until element is visible    ${errortext}
