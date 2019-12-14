describe "first script" do
  it "to visit page" do
    # Acessa a página a ser testada
    visit "https://training-wheels-protocol.herokuapp.com/"

    # Pega o titulo da página
    puts page.title
  end
end
