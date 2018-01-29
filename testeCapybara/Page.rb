
class Page < SitePrism::Page
    
    set_url "https://bazar-da-samy.lojaintegrada.com.br/"

    element :campo, :xpath, "/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input"
    element :botao, :xpath, "/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button"

    def acaoComSucesso
        campo.set('abababaa@com.br')
        botao.click
    end

    def acaoSemSucesso
        campo.set('abcom.br')
        botao.click
    end
end