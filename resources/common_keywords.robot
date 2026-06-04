 
*** Settings ***
Documentation    Keywords reutilizables
Library    SeleniumLibrary
Library    String
Resource    variables.robot
Resource    locators.robot

*** Keywords ***
Abrir Navegador En URL
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}

Cerrar Navegador
    Close Browser

Tomar Captura
    [Arguments]    ${nombre_archivo}
    ${timestamp}    Get Time    epoch
    Capture Page Screenshot    ${SCREENSHOT_PATH}/${nombre_archivo}_${timestamp}.png

Esperar Y Hacer Click
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    ${locator}    timeout=10s
    Click Element    ${locator}

Esperar Y Ingresar Texto
    [Arguments]    ${locator}    ${texto}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Input Text    ${locator}    ${texto}

Scroll To Element
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Sleep    0.5s

Generar Email Aleatorio
    ${random_num}    Generate Random String    5    [NUMBERS]
    ${email}    Set Variable    eric.luna${random_num}@gmail.com
    [Return]    ${email}