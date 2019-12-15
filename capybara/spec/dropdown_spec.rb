describe "Option box", :dropdown do
  it "Simple specific item" do
    # Visit the page in browser
    visit "/dropdown"

    # Select the Loki option
    select("Loki", from: "dropdown")

    # Wait 3 seconds
    sleep 3
  end

  it "Specific item with find" do
    # Visit the page in browser
    visit "/dropdown"

    # Search the "avanger-list" element and store it in the selectist variable
    selectList = find(".avenger-list")

    # Search for variable selectList the Scott Lang option
    selectList.find("option", text: "Scott Lang").select_option

    # Wait 3 seconds
    sleep 3
  end

  it "Any option", :sample do
    # Visit the page in browser
    visit "/dropdown"

    # Search the "avanger-list" element and store it in the selectist variable
    selectList = find(".avenger-list")

    # Search all elements returning an array
    selectList.all("option").sample.select_option # sample: draws an element within array

    sleep 3
  end
end
