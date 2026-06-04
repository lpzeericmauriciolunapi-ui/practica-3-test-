 
*** Settings ***
Documentation    Localizadores de elementos web

*** Variables ***
# Localizadores - Login
${LOGIN_LINK}    xpath://a[contains(text(),'Signup / Login')]
${LOGOUT_LINK}    xpath://a[contains(text(),'Logout')]
${DELETE_LINK}    xpath://a[contains(text(),'Delete Account')]
${LOGIN_EMAIL}    xpath://input[@data-qa='login-email']
${LOGIN_PASSWORD}    xpath://input[@data-qa='login-password']
${LOGIN_BUTTON}    xpath://button[@data-qa='login-button']
${LOGGED_USER}    xpath://a[contains(text(),'Logged in as')]

# Localizadores - Signup
${NAME_INPUT}    xpath://input[@data-qa='signup-name']
${EMAIL_INPUT_SIGNUP}    xpath://input[@data-qa='signup-email']
${SIGNUP_BUTTON}    xpath://button[@data-qa='signup-button']

# Localizadores - Registro
${GENDER_MR}    xpath://input[@id='id_gender1']
${PASSWORD_REG}    xpath://input[@id='password']
${DAYS_DOB}    xpath://select[@id='days']
${MONTHS_DOB}    xpath://select[@id='months']
${YEARS_DOB}    xpath://select[@id='years']
${NEWSLETTER_CHECKBOX}    xpath://input[@id='newsletter']
${OFFERS_CHECKBOX}    xpath://input[@id='optin']
${FIRST_NAME_REG}    xpath://input[@id='first_name']
${LAST_NAME_REG}    xpath://input[@id='last_name']
${COMPANY_REG}    xpath://input[@id='company']
${ADDRESS_REG}    xpath://input[@id='address1']
${ADDRESS2_REG}    xpath://input[@id='address2']
${COUNTRY_REG}    xpath://select[@id='country']
${STATE_REG}    xpath://input[@id='state']
${CITY_REG}    xpath://input[@id='city']
${ZIPCODE_REG}    xpath://input[@id='zipcode']
${MOBILE_NUMBER_REG}    xpath://input[@id='mobile_number']
${CREATE_ACCOUNT_BUTTON}    xpath://button[@data-qa='create-account']
${ACCOUNT_CREATED_MSG}    xpath://b[contains(text(),'Account Created!')]
${CONTINUE_BUTTON}    xpath://a[@data-qa='continue-button']
${ACCOUNT_DELETED_MSG}    xpath://b[contains(text(),'Account Deleted!')]

# Localizadores - Contact Us
${CONTACT_LINK}    xpath://a[contains(text(),'Contact us')]
${CONTACT_NAME_FIELD}    xpath://input[@data-qa='name']
${CONTACT_EMAIL_FIELD}    xpath://input[@data-qa='email']
${CONTACT_SUBJECT_FIELD}    xpath://input[@data-qa='subject']
${CONTACT_MESSAGE_FIELD}    xpath://textarea[@data-qa='message']
${UPLOAD_FILE_BUTTON}    xpath://input[@name='upload_file']
${SUBMIT_BUTTON}    xpath://input[@data-qa='submit-button']
${HOME_BUTTON}    xpath://a[contains(text(),'Home')]