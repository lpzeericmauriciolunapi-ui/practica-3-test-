*** Settings ***
Documentation    Ejercicio 5 - Formulario de Contacto
Resource    ../resources/variables.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Suite Setup    Abrir Navegador En URL    ${HOME_URL}
Suite Teardown    Cerrar Navegador

*** Test Cases ***
Formulario De Contacto Completo
    [Documentation]    Completar formulario de contacto y validar envio
    
    Title Should Be    Automation Exercise
    Tomar Captura    contacto_01_inicio
    
    Esperar Y Hacer Click    ${CONTACT_LINK}
    Sleep    1s
    Page Should Contain    Get In Touch
    Tomar Captura    contacto_02_formulario
    
    Esperar Y Ingresar Texto    ${CONTACT_NAME_FIELD}    ${CONTACT_NAME}
    Esperar Y Ingresar Texto    ${CONTACT_EMAIL_FIELD}    ${CONTACT_EMAIL}
    Esperar Y Ingresar Texto    ${CONTACT_SUBJECT_FIELD}    ${CONTACT_SUBJECT}
    Esperar Y Ingresar Texto    ${CONTACT_MESSAGE_FIELD}    ${CONTACT_MESSAGE}
    Tomar Captura    contacto_03_datos_completados
    
    Scroll To Element    ${SUBMIT_BUTTON}
    Esperar Y Hacer Click    ${SUBMIT_BUTTON}
    Handle Alert    accept
    Sleep    2s
    
    Wait Until Page Contains    Success! Your details have been submitted successfully.    timeout=10s
    Page Should Contain    Success! Your details have been submitted successfully.
    Tomar Captura    contacto_04_envio_exitoso
    
    Element Should Be Visible    ${HOME_BUTTON}
    Esperar Y Hacer Click    ${HOME_BUTTON}
    Sleep    1s
    Title Should Be    Automation Exercise
    Tomar Captura    contacto_05_retorno_home