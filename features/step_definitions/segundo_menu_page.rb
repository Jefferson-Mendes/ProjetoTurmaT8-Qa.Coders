Dado('que eu esteja na página principal') do
    commum.load
  end
  
  Quando('eu clico em {string}') do |menu_name|
    second.click_second_menu(menu_name)
  end
  
  E('é revelado o seguinte texto {string}') do |text_name|
    second.validate_content(text_name)
  end
  
  Então('quando clico novamente em {string} oculta o conteudo do texto {string}') do |menu_name, text_name|
    second.click_second_menu(menu_name)
    second.validate_no_content(text_name)
  end