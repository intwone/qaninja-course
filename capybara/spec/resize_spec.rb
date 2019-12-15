describe "resize browser window", :resize do
  it "to visit page" do
    # Acessa a página a ser testada
    visit "/"

    # Pega o titulo da página
    puts page.title
  end
end
