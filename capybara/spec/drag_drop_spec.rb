describe "Drag and Drop", :drag do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end

  it "Spider man belongs to Starks team" do
    stark = find(".team-stark .column")
    americanCaptain = find(".team-cap .column")

    spiderMan = find("img[alt*=Aranha]")

    spiderMan.drag_to stark # move para a div ".team-stark"

    expect(stark).to have_css "img[alt*=Aranha]" # verifica se contem a imagem na div
    expect(americanCaptain).not_to have_css "img[alt*=Aranha]" # verifica se não contem a im`agem na div
  end
end
