class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    
    #element :btn_sobre_nos, 'a[href="/#sobre-nos"]'
    #element :title_sobre_nos, '//h3[text()="Sobre nós"]'
    #element :btn_depoimentos, 'a[href="/#depoimentos"]'
    ##element :title_depoimentos, '//h3[text()="O Qa.Coders é feito para os alunos"]'
    #element :btn_parceiros, 'a[href="/#parceiros"]'
    #element :title_parceiros, '//h3[text()="Parceiros"]'
    #element :btn_fale_Conosco, 'a[href="/#faleConosco"]'
    #element :title_fale_conosco, '//h3[text()="Fale Conosco"]'
    

        #def click_button(btn_name)
    #   if btn_name == "Sobre nós"
    #       btn_sobre_nos.click
    #       elsif btn_name == "Depoimentos"
    #       btn_depoimentos.click
    #       elsif btn_name == "Parceiros"
    #       btn_parceiros.click
    #       else btn_name == "Fale_Conosco"
    #       btn_fale_Conosco.click
    #   end
    #end

    def click_button(btn_name)
        find("a[href='/##{btn_name}']").click
    end

    
    def validate_test(sessao_name)
       find('h3', text:sessao_name).text
       sleep 2
    end
end