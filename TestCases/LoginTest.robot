#*** Settings ***
#Library  SeleniumLibrary
##from selenium import webdriver
#*** Variables ***
#${host}   https://fado.vn/dang-nhap/
#
#*** Test Cases ***
#OpenWebsite
#   open browser   ${host}  Chrome
##   phóng to trình duyệt
#   maximize browser window
#
#Login with success
##   locater input + text mình muốn nhập
#   input text  css=input#auth-block__form-group__email   truongnguyendep@gmail.com
#   input text  css=input[data-test-login-password]       123456
##   click button  css=button.auth-block__login-btn
#   press keys  css=button.auth-block__login-btn          ENTER
##   trường hợp sai mật khẩu
##   phép chờ
#   wait until element is visible  css=div.-alert-danger
##   lấy text trên cái alert đó
#   element text should be  css=div.-alert-danger         Có lỗi xảy ra:\n- Mật khẩu không đúng, vui lòng kiểm tra lại
##   close trình duyệt
##   [Teardown]  : có nghĩa là cho dù pass hay không pass thì vẫn đóng trình duyệt
#   [Teardown]  close browser
#
#Login with not exists username
#   open browser   ${host}  Chrome
##  locater input + text mình muốn nhập
#   input text  css=input#auth-block__form-group__email   truongga123@gmail.com
#   input text  css=input[data-test-login-password]       truong19062001
 ###   click button  css=button.auth-block__login-btn
 ##   press keys  css=button.auth-block__login-btn          ENTER
 ###   phép chờ
 ##   wait until element is visible  css=div.-alert-danger
 ###   lấy text trên cái alert đó
 ##   element text should be  css=div.-alert-danger         Có lỗi xảy ra:\n- Tài khoản không tồn tại, vui lòng kiểm tra lại
 ##   [Teardown]  close browser
 ##
 ##*** Keywords ***
 ##
 ##
 ##
 ##
