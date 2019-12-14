# Expessão regular $('seletor[seletor=valor_do_seletor]')
# $('img[alt^=Homem]')  -> seleciona todos atributos que começam (^) com a palavra "Homem"
# $('img[alt$=Aranha]') -> seleciona todos atributos que terminam ($) com a palavra "Aranha"
# $('img[alt*=Homem]')  -> seleciona todos atributos que contém (*) com a palavra "Homem"

describe "Mouse Hover", :hovers do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "mouse hover in blade" do
    card = find("img[alt=Blade]")
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "mouse hover in black panther" do
    card = find("img[alt$=Negra]") # string com espaço devem ser colocadas em aspas simples para o CSS Selector detectar o elemento
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "mouse hover in spider man" do
    card = find("img[alt*=Aranha]")
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 2
  end
end
