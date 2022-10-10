*** Settings ***
Documentation        Login tests


Resource            ../resources/main.resource



*** Test Cases ***
Deve logar com sucesso
     Go To Login Page
     Submit Credentials    papito@gmail.com    vaibrasil
     User Logged In

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials         papito@gmail.com    abc23
    Toast Message Should Be    Credenciais inválidas, tente novamente!

