*** Settings ***
Documentation  Some basic information about the whole test suite
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  DateTime

Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental13.infotiv.net/webpage/html/gui/index.php
${URLBOOKING}  http://rental13.infotiv.net/webpage/html/gui/index.php
${URLMYPAGE}  http://rental13.infotiv.net/webpage/html/gui/myPage.php
${URLCONFIRMBOOKING}  http://rental13.infotiv.net/webpage/html/gui/confirmBook.php
${URLSHOWCAR}  http://rental13.infotiv.net/webpage/html/gui/showCars.php
${USER}         tester@test.com
${PASSWORD}     testing123

*** Test Cases ***
User Can Click On Logo And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    GO TO WEB PAGE
    Click On Logo
    Verify Current URL is startpage

User Can Click Logo On Booking Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Booking Page
    Click On Logo
    Verify Current URL is startpage

User Can Click Logo Confirm Booking Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Confirm Booking Page
    Click On Logo
    Verify Current URL is startpage

User Can Click Logo On Show Car Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Show Car Page
    Click On Logo
    Verify Current URL is startpage

User Can Click Logo On MyPage And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On MyPage
    Click On Logo
    Verify Current URL is startpage

User Can Click On Title And Divert To Start Page
    [Documentation]  This test case verifies the title are clickable and will take user to the start page.
    [Tags]  Header
    GO TO WEB PAGE
    Click On Title
    Verify Current URL is startpage

User Can Click Title On Booking Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Booking Page
    Click On Title
    Verify Current URL is startpage

User Can Click Title Confirm Booking Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Confirm Booking Page
    Click On Title
    Verify Current URL is startpage

User Can Click Title On Show Car Page And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On Show Car Page
    Click On Title
    Verify Current URL is startpage

User Can Click Title On MyPage And Divert To Start Page
    [Documentation]  This test case verifies the logo are clickable and will take user to the start page.
    [Tags]  Header
    Verify On MyPage
    Click On Title
    Verify Current URL is startpage

Verify Start Date In Date Selection
    [Documentation]  This test case verifies the start date on date selection
    [Tags]  Date Selection
    GO TO WEB PAGE
    Verify Earliest Selectable Date Is Today

Verify Booking Flow For A login User
    [Documentation]  This test case verifies the navigation flow of the booking
    [Tags]  VG_test
    Given User Is On Start Page
    When User Login With Credential
    Then User Can Complete Booking

