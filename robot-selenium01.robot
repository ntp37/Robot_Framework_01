*** Settings ***
Library         SeleniumLibrary




*** Variables ***
${user}         abc12345@gmail.com       #Please insert your E-mail
${password}     xxxxxxxxxxxx             #Please insert your password
${search}       Engineer                 #Please insert your job position or keyword of job




*** Test Cases ***
jobth_01 Open jobth
    Open jobth

jobth_02 Login
    Login jobth
    Insert User & Password

jobth_03 Search job
    Search job




*** Keywords ***
Open jobth
    Open Browser		url=https://www.jobthai.com/%E0%B8%AB%E0%B8%B2%E0%B8%87%E0%B8%B2%E0%B8%99       browser=chrome

Login jobth
    Wait Until Page Contains Element        xpath=//div[@id="search-location"]/div      15s
    Click Element         xpath=//div[@class="sc-11am6a-0 jGSQCc"]/div/img[@class="closeModalPreload sc-11am6a-2 ifLshv"]
    Click Element         id=login-resume

Insert User & Password
    Wait Until Page Contains Element        name=username                               15s
    Input Text            name=username                                                 ${user}
    Input Text            name=password                                                 ${password}
    Click Button          id=btn_resume_login

Search job
    Wait Until Page Contains Element        xpath=//div[@id="search-location"]/div      15s
    Click Element                           xpath=//div[@id="search-location"]/div
    Click Element                           id=option-workLocation-province,01
    Click Element                           xpath=//div[@class="cx929k-0 fXwhGq"]
    Wait Until Page Contains Element        id=option-jobtype-28                        15s
    Click Element                           id=option-jobtype-28
    Wait Until Page Contains Element        xpath=//div[@id="option-jobtype-subjobtype-28-110"]/div[@class="ant-col ant-col-22 ijyf0c-4 hKVMl"]       
    ...                                     15s
    Click Element                           xpath=//div[@id="option-jobtype-subjobtype-28-110"]/div[@class="ant-col ant-col-22 ijyf0c-4 hKVMl"]
    Click Element                           xpath=//div[@id="option-jobtype-subjobtype-28-116"]/div[@class="ant-col ant-col-22 ijyf0c-4 hKVMl"]
    Click Element                           xpath=//div[@class="sc-12taqvr-3 jEkSpi"]
    Input Text                              id=input-pophover-keyword                   ${search}
    Press Keys                              id=input-pophover-keyword                   ENTER