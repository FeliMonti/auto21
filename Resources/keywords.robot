*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

Go To Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains   Infotiv Car Rental

Click On Logo
    Click Element                       //*[@id="logo"]
    Sleep  1s

Click On Title
    Click Element                       //*[@id="title"]
    Sleep  1s

Verify Current URL is startpage
    location Should Be  ${URL}
    Sleep  1s

Verify On Booking Page
    location Should Be  ${URLBOOKING}

Verify On Confirm Booking Page
    Go To  ${URLCONFIRMBOOKING}

Verify On Show Car Page
    Go To  ${URLSHOWCAR}

Verify On MyPage
    Go To   ${URLMYPAGE}

Verify Earliest Selectable Date Is Today
    ${CurrentDate}  Get Current Date  result_format=%Y-%m-%d
    ${EarliestDate}  Get Element Attribute  id:start  min
    Should Be Equal   ${CurrentDate}  ${EarliestDate}
    Log  ${EarliestDate}
    Sleep  1s

User Is On Start Page
    Verify Current URL is startpage
    Verify Login Possibility

Verify Login Possibility
    Page Should Contain Button          //*[@id="login"]

User Login With Credential
    Input Text      id:email                ${USER}
    Input Text      id:password             ${PASSWORD}
    Click Button    //*[@id="login"]
    Verify Successful Login
    Sleep  1s

Verify Successful Login
    Page Should Contain Button          //*[@id="logout"]

User Can Complete Booking
    Verify On Booking Page
    Click Element                       //*[@id="continue"]
    Click Button                        //*[@id="bookQ7pass7"]
    Sleep  1s
    Input Card Details
    Sleep  1s
    Verify Booking Is Completed
    Sleep  1s
    To Clear Booking Item
    Sleep  1s
    Logout From Web Page

Input Card Details
    Input Text    //*[@id="cardNum"]   1234567891011121
    Input Text    //*[@id="fullName"]  Tammy Tester
    Input Text    //*[@id="cvc"]       123
    Sleep  1s
    Click Button  //*[@id="confirm"]

Verify Booking Is Completed
    Wait Until Page Contains Element    id:confirmMessage

To Clear Booking Item
    Click Button                        //*[@id="mypage"]
    Verify On MyPage
    Wait Until Page Contains Element    //*[@id="unBook1"]
    Click Button                        //*[@id="unBook1"]
    Sleep  2s
    Handle Alert     action=ACCEPT      timeout=2s

Logout From Web Page
    Click Button                         //*[@id="logout"]

End Web Test
    Close Browser







