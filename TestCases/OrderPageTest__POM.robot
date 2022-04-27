*** Settings ***
Resource  ../PageObjects/OrderPage.robot
Library   ../Library/DataTest.py
*** Variables ***

*** Test Cases ***
Search Product
   open page
   scrollScreenPage
   delayScreen             2s
   scrolltoProduct         //*[@id="vnt-content"]/div[2]/div/div[4]/div
   delayScreen             1s
   scrolltoProduct         //*[@id="vnt-content"]/div[3]/div
   delayScreen             1s
   scrolltoProduct         //*[@id="vnt-content"]/div[2]/div/div[2]/div/div
   delayScreen             2s
   clickDetailProduct      //*[@id="vnt-content"]/div[2]/div/div[2]/div/div/div/div[1]
   delayScreen             1s
Filter Product
   clickbtnFilterProduct   //*[@id="filter-size"]/div[1]
   delayScreen             1s
   clickbtnFilterProduct   //*[@id="filter-size"]/div[2]/div/div[3]
   clickbtnFilterProduct   //*[@id="filter-color"]/div[1]
   scrollscreenpage
addToCart
   clickDetailProduct      //*[@id="gripItemproduct"]/div[1]/div/div[1]
   scrollScreenPage
   clickbtnFilterProduct   //*[@id="proDetail"]/div[3]/div[1]/div/div[1]
   delayScreen             1s
   clickbtnFilterProduct   //*[@id="proDetail"]/div[3]/div[1]/div/div[2]/ul/li[2]
   delayScreen             4s
   clickButton             ĐẶT MUA NGAY
   [Teardown]    close browser
