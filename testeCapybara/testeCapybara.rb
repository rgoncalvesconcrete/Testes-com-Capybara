require 'capybara/rspec'
require 'site_prism'
require_relative "Page"



describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail válido, ao cadastrar, eu vejo a mensagem Obrigado por se inscrever! Aguarde novidades da nossa loja em breve. " do
<<<<<<< HEAD

        @page = Page.new   
        @page.load
        @page.acaoComSucesso

        expect(page).to have_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.', wait: 2 #wait fica aguardando o tempo definido caso o texto demore a aparece, ao contrario passa sem aguardar.
=======
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'

        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('abab@com.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina possua o texto informado.
        expect(page).to have_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'
        sleep 2
>>>>>>> 0c10f956eaa743a867b943e11379b2f1ab2a6355
    end
end


describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail válido, ao cadastrar, com um e-mail existente, eu vejo a mensagem Seu e-mail já consta em nossa newsletter. " do
<<<<<<< HEAD

        @page = Page.new   
        @page.load
        @page.acaoComSucesso

        expect(page).to have_content 'Seu e-mail já consta em nossa newsletter.', wait: 2
=======
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'

        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('abab@com.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina possua o texto informado.
        expect(page).to have_content 'Seu e-mail já consta em nossa newsletter.'
        sleep 2
>>>>>>> 0c10f956eaa743a867b943e11379b2f1ab2a6355
    end
end

describe "Visitando o site Bazar da Samy", js: true, type: :feature do
    it "Com um e-mail não válido, ao tentar o cadastro, eu vejo a mensagem Receba nossas ofertas por e-mail" do
<<<<<<< HEAD
            
        @page = Page.new   
        @page.load
        @page.acaoSemSucesso

        expect(page).to have_no_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'
        expect(page).to have_no_content 'Seu e-mail já consta em nossa newsletter.', wait: 2

=======
        
        visit 'https://bazar-da-samy.lojaintegrada.com.br/'
        #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('ababcom.br')
        #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
        find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
        #Espero que a pagina nao possua os textos informado.
        expect(page).to have_no_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'
        expect(page).to have_no_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'

        sleep 2
>>>>>>> 0c10f956eaa743a867b943e11379b2f1ab2a6355
    end
end
          
            

# describe "Visitando o site Bazar da Samy", js: true, type: :feature do
#     it "Com um e-mail válido, ao cadastrar, eu vejo a mensagem Obrigado por se inscrever! Aguarde novidades da nossa loja em breve. " do
        
#         visit 'https://bazar-da-samy.lojaintegrada.com.br/'

#         #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('ababaa@com.br')
#         #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
#         #Espero que a pagina possua o texto informado.
#         expect(page).to have_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.', wait: 2 #wait fica aguardando o tempo definido caso o texto demore a aparece, ao contrario passa sem aguardar.
        
    
#     end
# end


# describe "Visitando o site Bazar da Samy", js: true, type: :feature do
#     it "Com um e-mail válido, ao cadastrar, com um e-mail existente, eu vejo a mensagem Seu e-mail já consta em nossa newsletter. " do
        
#         visit 'https://bazar-da-samy.lojaintegrada.com.br/'

#         #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('abab@com.br')
#         #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
#         #Espero que a pagina possua o texto informado.
#         expect(page).to have_content 'Seu e-mail já consta em nossa newsletter.', wait: 2
        
#     end
# end


# describe "Visitando o site Bazar da Samy", js: true, type: :feature do
#     it "Com um e-mail não válido, ao tentar o cadastro, eu vejo a mensagem Receba nossas ofertas por e-mail" do
        
#         visit 'https://bazar-da-samy.lojaintegrada.com.br/'
#         #Pesquisando o campo pelo xpath devido ao motivo de possuir um ou mais campos com o mesmo nome e insiro através do .set o valor no campo.
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/input').set('ababcom.br')
#         #Pesquisando o botão pelo xpath devido ao motivo de possuir um ou mais botoões com o mesmo nome e em seguida o comando click
#         find(:xpath, '/html/body/div[4]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button').click
#         #Espero que a pagina nao possua os textos informado.
#         expect(page).to have_no_content 'Obrigado por se inscrever! Aguarde novidades da nossa loja em breve.'
#         expect(page).to have_no_content 'Seu e-mail já consta em nossa newsletter., wait: 2

#     end
#end