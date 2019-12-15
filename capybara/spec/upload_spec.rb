describe "Upload", :upload do
  before(:each) do
    # Visit the page in browser
    visit "/upload"

    # Current directory
    @file = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @image = Dir.pwd + "/spec/fixtures/picture.png"
  end

  it "Upload with text file" do
    attach_file("file-upload", @file)
    click_button "Upload"

    fileDiv = find("#uploaded-file")
    expect(fileDiv.text).to eql "arquivo.txt"
  end

  it "Upload with image file", :uploadImage do
    attach_file("file-upload", @image)
    click_button "Upload"

    imageDiv = find("#new-image")
    expect(imageDiv[:src]).to include "/uploads/picture.png"
  end

  after(:each) do
    sleep 3
  end
end
