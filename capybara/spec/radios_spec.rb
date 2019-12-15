describe "Radios buttons", :radio do
  before(:each) do
    visit "/radios"
  end

  it "Selection by id" do
    choose("cap")
  end

  it "Selection by find and css selector" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 3
  end
end
