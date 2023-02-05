Dado('que eu esteja na sessão de parceiros') do
  commum.load
  end
  
  Quando('eu clico no icone {string}') do |icon_name|
    parceiros.click_icon(icon_name)
  end
  
  Então('sou direcionado para o site {string}') do |site_name|
    parceiros.validate_site(site_name)
  end