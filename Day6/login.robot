*** Settings ***
Documentation    Suite description

*** Variable ***

${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_submit}     //*[text()="Log in"]

*** Keywords ***
Login
    Open browser    https://app.deriv.com   chrome
    maximize browser window
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page contains element    ${login_btn}    60
    click element   ${login_btn}
    wait until page contains element    ${email_field}  15
    input text  ${email_field}  ${my_email}
    input text  ${pw_field}     ${my_pw}
    click element      ${login_submit}
