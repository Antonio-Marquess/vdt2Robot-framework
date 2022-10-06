*** Settings ***
Library   Browser

*** Variables ***
${alogan}        Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da home page
    New Browser    headless=false
    New Page        https://trade-sticker-dev.vercel.app
    Get Text        .logo-container h2    contains    ${alogan}  
    Take Screenshot

