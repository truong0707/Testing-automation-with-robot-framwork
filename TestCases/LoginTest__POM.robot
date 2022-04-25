*** Settings ***
Resource  ../PageObjects/LoginPage.robot
Library   ../Library/TestData

*** Variables ***
${errormsg}=   Có lỗi xảy ra:\n- Mật khẩu không đúng, vui lòng kiểm tra lại

*** Test Cases ***
Login with wrong password
   ${username}=   get_data_test_by_data_key   username
   ${password}=   get_data_test_by_data_key   password
   open fado login page
   enter username       ${username}
   enter password       ${password}
   click button         Đăng nhập
   verify Error text    ${errormsg}
#   close trình duyệt
#   [Teardown]  : có nghĩa là cho dù pass hay không pass thì vẫn đóng trình duyệt
   [Teardown]  close browser

Login with not exists username
   open fado login page
   enter username       truongga123@gmail.com
   enter password       truong19062001
   click button         Đăng nhập
   verify Error text    Có lỗi xảy ra:\n- Tài khoản không tồn tại, vui lòng kiểm tra lại
   [Teardown]  close browser