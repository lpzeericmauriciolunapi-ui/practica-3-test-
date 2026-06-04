*** Settings ***
Documentation    Ejercicio 1 - Login Correcto con credenciales de Eric Luna
Resource    ../resources/variables.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Suite Setup    Abrir Navegador En URL    ${HOME_URL}
Suite Teardown    Cerrar Navegador

*** Test Cases ***
Login Correcto Con Eric Luna
    [Documentation]    Inicio de sesion con email eric@gmail.com y password 12345678
    
    Title Should Be    Automation Exercise
    Tomar Captura    01_pagina_principal
    
    Esperar Y Hacer Click    ${LOGIN_LINK}
    Sleep    1s
    Page Should Contain    Login to your account
    Tomar Captura    02_pagina_login
    
    Esperar Y Ingresar Texto    ${LOGIN_EMAIL}    ${VALID_EMAIL}
    Esperar Y Ingresar Texto    ${LOGIN_PASSWORD}    ${VALID_PASSWORD}
    Tomar Captura    03_credenciales_ingresadas
    
    Esperar Y Hacer Click    ${LOGIN_BUTTON}
    Sleep    2s
    
    Wait Until Element Is Visible    ${LOGGED_USER}    timeout=10s
    Element Should Be Visible    ${LOGGED_USER}
    Page Should Contain    Logged in as
    Page Should Contain    ${VALID_NAME}
    Tomar Captura    04_login_exitoso
    
    Element Should Be Visible    ${LOGOUT_LINK}