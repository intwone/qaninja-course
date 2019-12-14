describe "Selection box", :checkbox do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "Marking an option" do
    check("thor") # used in #id and .name attributes
  end

  it "Unmarking an option" do
    uncheck("antman") # used in #id and .name attributes
  end

  it "Marking with find set true" do
    find("input[value=cap]").set(true) # search in input by value = cap and set the box
  end

  it "Unmarking with find set false" do
    find("input[value=guardians]").set(false) # search in input by value = guardians and unset the box
  end

  after(:each) do
    sleep 3
  end
end
