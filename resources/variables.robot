*** Settings ***
Documentation    Variables globales del proyecto
Library    SeleniumLibrary

*** Variables ***
# URLs
${BASE_URL}    https://automationexercise.com
${HOME_URL}    https://automationexercise.com/
${LOGIN_URL}    https://automationexercise.com/login
${CONTACT_URL}    https://automationexercise.com/contact_us
${SIGNUP_URL}    https://automationexercise.com/signup

# Credenciales de Eric Luna
${VALID_EMAIL}    eric1@gmail.com
${VALID_PASSWORD}    12345678
${VALID_NAME}    Eric Luna

# Datos de registro
${NEW_USER_NAME}    Eric Luna
${NEW_USER_PASSWORD}    12345678
${FIRST_NAME}    Eric
${LAST_NAME}    Luna
${COMPANY}    Test Company
${ADDRESS}    Calle Principal 123
${ADDRESS2}    Piso 2
${COUNTRY}    United States
${STATE}    California
${CITY}    Los Angeles
${ZIPCODE}    90210
${MOBILE_NUMBER}    1234567890

# Datos de contacto
${CONTACT_NAME}    Eric Luna
${CONTACT_EMAIL}    eric@gmail.com
${CONTACT_SUBJECT}    Consulta sobre productos
${CONTACT_MESSAGE}    Mensaje de prueba de Eric Luna para el formulario de contacto.

# Timeouts
${BROWSER}    chrome
${IMPLICIT_WAIT}    10s
${EXPLICIT_WAIT}    15s

# Rutas
${SCREENSHOT_PATH}    ${CURDIR}/../results/screenshots/