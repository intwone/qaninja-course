describe "Tables", :tables, :smoke do
  before(:each) do
    visit "/tables"
  end

  it "should display the Tony Stark salary" do
    actors = all("table tbody tr") # return all elements contained in tr
    tonyStark = actors.detect { |actor| actor.text.include?("Robert Downey Jr") }
    expect(tonyStark.text).to include "10.000.000"
  end

  it "should display the Vin Diesel" do
    vinDiesel = find("table tbody tr", text: "@vindiesel") # return the elements = Vin Diesel contained in tr
    expect(vinDiesel).to have_content "10.000.000"
  end

  it "should display the Fast And Furious" do
    fastFurious = find("table tbody tr", text: "@vindiesel") # return the elements = Vin Diesel contained in tr
    expect(fastFurious).to have_content "Velozes e Furiosos"
  end

  # checks by columns
  it "should display the Fast And Furious" do
    fastFurious = find("table tbody tr", text: "@vindiesel") # return the elements = Vin Diesel contained in tr
    movie = fastFurious.all("td")[2].text
    expect(movie).to eql "Velozes e Furiosos"
  end

  # checks by columns
  it "should display Chris Evans instagram" do
    chrisEvans = find("table tbody tr", text: "Chris Evans")
    chrisInstagram = chrisEvans.all("td")[4].text
    expect(chrisInstagram).to eql "@teamcevans"
  end

  # remove item
  it "should select Chris Pratt for to removal", :chrisRemove do
    chrisPratt = find("table tbody tr", text: "Chris Pratt")
    chrisPrattRemove = chrisPratt.find("a", text: "delete").click
    message = page.driver.browser.switch_to.alert.text
    expect(message).to eql "Chris Pratt foi selecionado para remoção!"
  end

  # edit item
  it "should select Chadwick Boseman for to edital", :chadEdit do
    chadwich = find("table tbody tr", text: "Chadwick Boseman")
    chadwichEdit = chadwich.find("a", text: "edit").click
    message = page.driver.browser.switch_to.alert.text
    expect(message).to eql "Chadwick Boseman foi selecionado para edição!"
  end
end
