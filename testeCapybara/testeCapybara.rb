require 'capybara/rspec'


describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail válido, ao cadastrar, eu vejo a mensagem Obrigado por se inscrever! Aguarde novidades da nossa loja em breve. " do
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'

        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('aaaaa@com.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina possua o texto informado.
        expect(page).to have_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'
        sleep 2
    end
end


describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail válido, ao cadastrar, com um e-mail existente, eu vejo a mensagem Seu e-mail já consta em nossa newsletter. " do
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'

        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('aaaaab@com.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina possua o texto informado.
        expect(page).to have_content 'Seu e-mail já consta em nossa newsletter.'
        sleep 2
    end
end


describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail não válido, ao tentar o cadastro, eu vejo a mensagem Receba nossas ofertas por e-mail" do
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'
        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('aaaaacom.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina possua o texto informado e que exista a DIV de erro.
        expect(page).to have_selector(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]')
        expect(page).to have_content 'Receba nossas ofertas por e-mail'
        sleep 2
    end
end

