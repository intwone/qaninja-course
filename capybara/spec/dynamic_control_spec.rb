describe "Upload", :dynamicControl do
  before(:each) do
    # Visit the page in browser
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  it "When field enable" do
    # property disabled = true (exist) the field is desabled
    # property disabled = false (do not exist) the field is enabled
    res = page.has_field? "movie", disabled: true # there is a field with the identifier = 'movie' with the property disable = 'true'
    puts res

    click_button "Habilita"

    res = page.has_field? "movie", disabled: false
    puts res
  end
end
