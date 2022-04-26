*** Settings ***
Resource  ../PageObjects/LoginPage.robot
Library   ../Library/DataTest.py
*** Variables ***

*** Test Cases ***
Login with wrong password
   ${username}=  get_data_test_by_data_key  usernamecorrect
   ${password}=  get_data_test_by_data_key  passwordcorrect
   open page
   open tab user        user
   navigateLoginPage    Đăng Nhập
   enter username       ${username}
   enter password       ${password}
   clickLoginButton     ĐĂNG NHẬP
   verify Error text
   [Teardown]   close browser
#   [Teardown]  : có nghĩa là cho dù pass hay không pass thì vẫn đóng trình duyệt

Logged in successfully
   ${usernamewrong}=  get_data_test_by_data_key  usernamewrong
   ${passwordwrong}=  get_data_test_by_data_key  passwordwrong
   open page
   open tab user        user
   navigateLoginPage    Đăng Nhập
   enter username       ${usernamewrong}
   enter password       ${passwordwrong}
   clickLoginButton     ĐĂNG NHẬP
#   [Teardown]  close browser