describe "Id element dynamic", :idDynamic do
  before(:each) do
    visit "/access"
  end

  it "register" do
    find("input[id$=UsernameInput]").set "Cassio"
    find("input[id^=PasswordInput]").set "123456"
    find("a[id*=GetStartedButton]").click

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"

    sleep 3
  end
end
