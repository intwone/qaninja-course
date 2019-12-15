describe "forms", :test do
  it "login com sucesso" do
    # Acessa a página a ser testada
    visit "/login"

    # Preenche o nome do usuário
    fill_in "username", with: "stark"

    # Preenche a senha do usuário
    fill_in "password", with: "jarvis!"

    # Clica no botão Login
    click_button "Login"

    # Verifica se o elemento existe na pagina
    expect(find("#flash").visible?).to be true

    # Obtem o texto exibido na caixa de dialogo (eql compara identico)
    # expect(find("#flash").text).to eql "Olá, Tony Stark. Você acessou a área logada!"

    # Obtem o texto e pergunta se o valor (mensagem) contém no texto
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    # Verifica se o valor (mensagem) contém no elemento "flash"
    # expect(find("flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
