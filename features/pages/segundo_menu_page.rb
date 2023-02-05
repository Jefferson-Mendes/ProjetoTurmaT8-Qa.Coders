class Second < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
                    
    def click_second_menu(menu_name)
        if menu_name == "Pra quem é o Qa.Coders?"
            find('h4', text:menu_name).click
            elsif menu_name == "O que vou aprender no Qa.Coders"
            find('h4', text:menu_name).click
            else menu_name == "Como estudar no Qa.Coders?"
            find('h4', text:menu_name).click
        end
    end

    def validate_content(text_name)
        find('span', text:text_name).text
        sleep 1
    end

    def validate_no_content(text_name)
        expect(page).to have_no_content(text_name)
    end
end