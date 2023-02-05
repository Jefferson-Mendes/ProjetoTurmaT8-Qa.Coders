class Parceiros < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
    

    element :icon_dank, 'a[href="https://dankidiomasitapecerica.com.br/"]'
    element :icon_prime, 'a[href="https://www.primecontrol.com.br//"]'
    element :icon_wf_contabilidade, 'a[href="https://www.linkedin.com/company/wf-contabilidade/about/"]'
    element :icon_humanAZ, 'a[href="https://www.humanaz.com.br/"]'
    element :icon_vortigo, 'a[href="https://vortigo.digital/"]'
    element :icon_contality, 'a[href="https://www.linkedin.com/company/contality/"]'
    element :icon_valtech, 'a[href="https://www.valtech.com/pt-br/"]'
    

    def click_icon(icon_name)
        if icon_name == "Dank_idiomas"
            icon_dank.click
        elsif icon_name == "PrimeControl"
            icon_prime.click
        elsif icon_name == "WF_Contabilidade"
            icon_wf_contabilidade.click
        elsif icon_name == "HumanAZ"
            icon_humanAZ.click
        elsif icon_name == "VORTIGO"
            icon_vortigo.click
        elsif icon_name == "Contality"
            icon_contality.click
        else icon_name == "Valtech_"
            icon_valtech.click
    end
end

    def validate_site(site_name)
        expect(page).to have_current_path(site_name, url: true)
    end

end