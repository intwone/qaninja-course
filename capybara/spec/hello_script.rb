describe "first script", :hello, :smoke do
  it "to visit page" do
    # Acessa a página a ser testada
    visit "/"

    # Pega o titulo da página
    puts page.title
  end
end
