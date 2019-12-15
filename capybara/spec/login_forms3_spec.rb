=begin

----- another way to work with scope -----

within("#login") do
  find("input[name=username]").set "stark"
  find("input[name=password]").set "jarvis!"
  click_button "Entrar"

=end

describe "login and register", :loginAndRegister do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/access"
  end

  it "login successfully" do
    # Search the father element in DOM
    loginForm = find("#login")

    # Fill in the login fields
    loginForm.find("input[name=username]").set "stark" # inside the element #login look for the element = name="username"
    loginForm.find("input[name=password]").set "jarvis!" # inside the element #login look for the element = name="password"

    # Click in login button
    click_button "Entrar"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "register successfully" do
    # Search the father element in DOM
    loginForm = find("#signup")

    within("#signup") do
      find("input[name=username]").set "fernando"
      find("input[name=password]").set "123456"
      click_link "Criar Conta"
    end

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
