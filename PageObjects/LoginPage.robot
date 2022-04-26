# Đây là nơi để tương tác với UI
#*** Settings ***
#Library  SeleniumLibrary
#
#*** Variables ***
#${url}          https://fado.vn/dang-nhap
#${txtUsername}  css=input#auth-block__form-group__email
#${txtPassword}  css=input[data-test-login-password]
#${btnLogin}     css=button.auth-block__login-btn
#${lbError}      css=div.-alert-danger
#
#*** Keywords ***
#open fado login page
#    open browser  ${url}  Chrome
#    maximize browser window     # phóng to trình duyệt
#
#enter username
#    # locater input + text mình muốn nhập
#    [Arguments]  ${username}
#    input text  ${txtUsername}     ${username}
#
#enter password
#   [Arguments]  ${password}
#   input text  ${txtPassword}      ${password}
#
#click Login button
#   # click button  css=button.auth-block__login-btn
#   click button  ${btnLogin}
#
#verify Error text
#   # trường hợp sai mật khẩu
#   # phép chờ
#   [Arguments]  ${error}
#   wait until element is visible   ${lbError}
#   # lấy text trên cái alert đó
#   element text should be          ${lbError}   ${error}


*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}          https://oldsailor.com.vn/nam.html?gclid=EAIaIQobChMIo93wt8Cd9wIV3plmAh38Egm7EAAYAiAAEgKGpvD_BwE
${txtUsername}  //*[@id="login_user"]
${txtPassword}  //*[@id="password"]
${btnLogin}     //*[@id="frmLogin"]/div[4]/button
${btnOpenTabUser}  css=span.icon1
${btnNavigate}    //*[@id="vnt-header"]/div[1]/div[3]/div[2]/div[2]/div[1]/ul/li[1]/a
${errortext}     //*[@id="vnt-content"]/div/div/div[3]/div/div[1]

*** Keywords ***
open page
    open browser     ${url}                 Chrome
    maximize browser window     # phóng to trình duyệt
open tab user
    [Arguments]      ${tabuser}
    press keys       ${btnOpenTabUser}      ${tabuser}
navigateLoginPage
    [Arguments]      ${navigatelogin}
    press keys       ${btnNavigate}         ${navigatelogin}
enter username
    # locater input + text mình muốn nhập
    [Arguments]      ${username}
    input text       ${txtUsername}         ${username}
enter password
    [Arguments]      ${password}
    input text       ${txtPassword}         ${password}
clickLoginButton
    [Arguments]      ${logintext}
    press keys       ${btnLogin}            ${logintext}
verify Error text
   wait until element is visible            ${errortext}
