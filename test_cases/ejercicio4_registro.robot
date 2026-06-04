*** Settings ***
Documentation    Ejercicio 4 - Registro completo de usuario
Resource    ../resources/variables.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Suite Setup    Abrir Navegador En URL    ${HOME_URL}
Suite Teardown    Cerrar Navegador

*** Variables ***
${RANDOM_EMAIL}    ${EMPTY}

*** Test Cases ***
Registro De Usuario Exitoso
    [Documentation]    Registro completo con datos de Eric Luna
    
    ${RANDOM_EMAIL}    Generar Email Aleatorio
    Set Suite Variable    ${RANDOM_EMAIL}
    
    Title Should Be    Automation Exercise
    Tomar Captura    registro_01_inicio
    
    Esperar Y Hacer Click    ${LOGIN_LINK}
    Sleep    1s
    Page Should Contain    New User Signup!
    Tomar Captura    registro_02_signup
    
    Esperar Y Ingresar Texto    ${NAME_INPUT}    ${NEW_USER_NAME}
    Esperar Y Ingresar Texto    ${EMAIL_INPUT_SIGNUP}    ${RANDOM_EMAIL}
    Tomar Captura    registro_03_datos_signup
    Esperar Y Hacer Click    ${SIGNUP_BUTTON}
    Sleep    2s
    
    Page Should Contain    Enter Account Information
    Tomar Captura    registro_04_formulario_cuenta
    
    Esperar Y Hacer Click    ${GENDER_MR}
    Esperar Y Ingresar Texto    ${PASSWORD_REG}    ${NEW_USER_PASSWORD}
    Select From List By Value    ${DAYS_DOB}    15
    Select From List By Value    ${MONTHS_DOB}    5
    Select From List By Value    ${YEARS_DOB}    1990
    Esperar Y Hacer Click    ${NEWSLETTER_CHECKBOX}
    Esperar Y Hacer Click    ${OFFERS_CHECKBOX}
    
    Esperar Y Ingresar Texto    ${FIRST_NAME_REG}    ${FIRST_NAME}
    Esperar Y Ingresar Texto    ${LAST_NAME_REG}    ${LAST_NAME}
    Esperar Y Ingresar Texto    ${COMPANY_REG}    ${COMPANY}
    Esperar Y Ingresar Texto    ${ADDRESS_REG}    ${ADDRESS}
    Esperar Y Ingresar Texto    ${ADDRESS2_REG}    ${ADDRESS2}
    Select From List By Value    ${COUNTRY_REG}    ${COUNTRY}
    Esperar Y Ingresar Texto    ${STATE_REG}    ${STATE}
    Esperar Y Ingresar Texto    ${CITY_REG}    ${CITY}
    Esperar Y Ingresar Texto    ${ZIPCODE_REG}    ${ZIPCODE}
    Esperar Y Ingresar Texto    ${MOBILE_NUMBER_REG}    ${MOBILE_NUMBER}
    Tomar Captura    registro_05_datos_completos
    
    Scroll To Element    ${CREATE_ACCOUNT_BUTTON}
    Esperar Y Hacer Click    ${CREATE_ACCOUNT_BUTTON}
    Sleep    3s
    
    Wait Until Page Contains    Account Created!    timeout=10s
    Page Should Contain    Account Created!
    Element Should Be Visible    ${ACCOUNT_CREATED_MSG}
    Tomar Captura    registro_06_cuenta_creada
    
    Esperar Y Hacer Click    ${CONTINUE_BUTTON}
    Sleep    2s
    Page Should Contain    Logged in as
    Page Should Contain    ${NEW_USER_NAME}
    Tomar Captura    registro_07_login_verificado
    
    Esperar Y Hacer Click    ${DELETE_LINK}
    Sleep    2s
    Wait Until Page Contains    Account Deleted!    timeout=10s
    Tomar Captura    registro_08_cuenta_eliminada
    Esperar Y Hacer Click    ${CONTINUE_BUTTON}