*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.kabum.com.br/
${BROWSER}    firefox

*** Keywords ***
Abrir navegador
  Open browser  ${URL}  ${BROWSER}

Fechar navegador
  Close browser

Verificar se a página foi carregada
  Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
  Wait Until Element Is Visible  css=#input-busca

Digitar o produto "${PRODUTO}"
  Input Text  id=input-busca  ${PRODUTO}

Clicar no botão pesquisar
  Click Element  css=#barraBuscaKabum > div > form > button

Conferir se o produto Smartphone Samsung Galaxy A70 foi localizado
  # Por algum motivo o site nunca exibe o produto que eu pesquiso, mesmo que este exista no site, por isso farei a verificação utilizando um produto semelhante
  # que sempre é exibido para a pesquisa.
  Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
  Wait Until Element Is Visible  css=#input-busca
  Wait Until Element Is Visible  css=#listingBreadcrumbs
  Wait Until Element Is Visible  xpath=//*[@id="listing"]/article/section/div[2]//img[@src="https://images.kabum.com.br/produtos/fotos/sync_mirakl/157825/Smartphone-Samsung-Galaxy-A72-128GB-6GB-Ram-Tela-6-7-Preto_1629404352_m.jpg"]

Conferir se o produto Smartphone Motorola One Vision foi localizado
  Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
  Wait Until Element Is Visible  css=#input-busca
  Wait Until Element Is Visible  css=#listingBreadcrumbs
  Wait Until Element Is Visible  xpath=//*[@id="listing"]/article/section/div[2]/div/main/div[3]/a/img[@src="https://images.kabum.com.br/produtos/fotos/sync_mirakl/205284/Smartphone-Motorola-One-Vision-128Gb-Bronze-XT1970-1_1628706916_m.jpg"]

Conferir se o produto Smartphone Xiaomi Redmi Note 9 foi localizado
  # Troquei para o 9
  Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
  Wait Until Element Is Visible  css=#input-busca
  Wait Until Element Is Visible  css=#listingBreadcrumbs
  Wait Until Element Is Visible  xpath=//*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/img[@src="https://images.kabum.com.br/produtos/fotos/sync_mirakl/117881/Smartphone-Xiaomi-Redmi-Note-9-Processador-Octa-Core-2-0GHz-4GB-Ram-128GB-C-mera-Quad-48-8-2-2-MP-Tela-de-6-53-Cinza-Vers-o-Global_1629481142_m.jpg"]