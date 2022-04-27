*** Settings ***
Resource  ../PageObjects/OrderPage.robot
Library   ../Library/DataTest.py
*** Variables ***

*** Test Cases ***
Order Product
   open page
   delayScreen          2s
   scrollScreen         //*[@id="vnt-content"]/div[2]/div/div[4]/div
   delayScreen          2s
   scrollScreen         //*[@id="vnt-content"]/div[3]/div
   delayScreen          2s
   scrollScreen         //*[@id="vnt-content"]/div[2]/div/div[2]/div/div
   delayScreen          2s
   clickDetailProduct   //*[@id="vnt-content"]/div[2]/div/div[2]/div/div/div/div[2]/div/div[1]/a
   delayScreen          2s

#   [Teardown]    close browser
