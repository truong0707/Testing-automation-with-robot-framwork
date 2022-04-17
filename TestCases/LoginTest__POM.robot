*** Settings ***
Resource  ../PageObjects/LoginPage.robot

*** Test Cases ***
Login with wrong password
   open fado login page
   enter username       truongnguyendep@gmail.com
   enter password       123456
   click button         Đăng nhập
   verify Error text    Có lỗi xảy ra:\n- Mật khẩu không đúng, vui lòng kiểm tra lại
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