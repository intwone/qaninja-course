describe "Select type two", :select2 do
  describe("single", :single) do
    before(:each) do
      visit "/apps/select2/single.html"
    end

    it "select actor by name" do
      find(".select2-selection--single").click
      find(".select2-results__option", text: "Adam Sandler").click
      sleep 5
    end

    it "select actor using the search" do
      find(".select2-selection--single").click
      find(".select2-search__field").set "Chris Rock"
      find(".select2-results__option").click
    end
  end

  describe("multiple") do
    before(:each) do
      visit "/apps/select2/multi.html"
    end
  end
end
