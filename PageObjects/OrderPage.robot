*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}             https://oldsailor.com.vn/nam.html?gclid=EAIaIQobChMIo93wt8Cd9wIV3plmAh38Egm7EAAYAiAAEgKGpvD_BwE
${btnLogin}        //*[@id="frmLogin"]/div[4]/button
${btnOpenTabUser}  css=span.icon1
${scrolllegth}     window.scrollTo(0, 200)
${buttonBuy}       //*[@id="btnAddCart"]
*** Keywords ***
open page
    open browser               ${url}                 Chrome
    maximize browser window     # phóng to trình duyệt
delayScreen
    [Arguments]                ${second}
    Sleep                      ${second}
scrolltoProduct
    [Arguments]                ${standingplace}
    scroll element into view   ${standingplace}
scrollScreenPage
    Execute JavaScript         ${scrolllegth}
clickDetailProduct
    [Arguments]                ${detailproduct}
    click element              ${detailproduct}
clickbtnFilterProduct
    [Arguments]                ${btnfilterproduct}
    click element              ${btnfilterproduct}
clickButton
    [Arguments]                ${txtbtnbuy}
    press keys                 ${buttonBuy}         ${txtbtnbuy}

