# Đây là nơi để tương tác với UI
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}          https://fado.vn/dang-nhap
${txtUsername}  css=input#auth-block__form-group__email
${txtPassword}  css=input[data-test-login-password]
${btnLogin}     css=button.auth-block__login-btn
${lbError}      css=div.-alert-danger

*** Keywords ***
open fado login page
    open browser  ${url}  Chrome
    maximize browser window     # phóng to trình duyệt

enter username
    # locater input + text mình muốn nhập
    [Arguments]  ${username}
    input text  ${txtUsername}     ${username}

enter password
   [Arguments]  ${password}
   input text  ${txtPassword}      ${password}

click Login button
   # click button  css=button.auth-block__login-btn
   click button  ${btnLogin}

verify Error text
   # trường hợp sai mật khẩu
   # phép chờ
   [Arguments]  ${error}
   wait until element is visible   ${lbError}
   # lấy text trên cái alert đó
   element text should be          ${lbError}   ${error}