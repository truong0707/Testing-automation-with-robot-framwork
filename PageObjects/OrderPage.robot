*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}             https://oldsailor.com.vn/nam.html?gclid=EAIaIQobChMIo93wt8Cd9wIV3plmAh38Egm7EAAYAiAAEgKGpvD_BwE
${btnLogin}        //*[@id="frmLogin"]/div[4]/button
${btnOpenTabUser}  css=span.icon1

*** Keywords ***
open page
    open browser     ${url}                 Chrome
    maximize browser window     # phóng to trình duyệt
delayScreen
    [Arguments]      ${second}
    Sleep            ${second}
scrollScreen
    [Arguments]                ${standingplace}
    scroll element into view   ${standingplace}
clickDetailProduct
    [Arguments]      ${detailproduct}
    click element    ${detailproduct}
clickbtnFilterProduct
    [Arguments]      ${btnfilterproduct}
    click element    ${btnfilterproduct}
#clickCarosel
#    [Arguments]      ${btn-next-prev}
#    click element    ${btn-next-prev}

