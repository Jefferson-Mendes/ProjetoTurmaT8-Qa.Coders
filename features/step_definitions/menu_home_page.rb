Dado('que eu esteja na página home') do
  
  commum.load
end

Quando('eu clico no botão {string}') do |btn_name|
  home.click_button(btn_name)
end

Então('sou direcionado para a sessão {string}') do |sessao_name|
  home.validate_test(sessao_name)
end