describe "Iframes" do
  describe "nice iframe", :niceIframe do
    before(:each) do
      visit "/nice_iframe"
    end

    it "Add to the cart" do
      # Working within iframe
      within_frame("burgerId") do
        product = find(".menu-item-info-box-content", text: "REFRIGERANTE") # search in class="menu-item-info-box" the text = "REFRIGERANTE"
        product.find("a").click # click in "button" link for to add product
        expect(find("#cart")).to have_content "R$ 4,50" # inside the element "cart" verify if contains the value = "R$ 4,50"
      end
    end
  end

  describe "bad iframe", :badIframe do
    before(:each) do
      visit "/bad_iframe"
    end

    it "cart must be empty" do
      # Script for to add an id in box-iframe element
      script = '$(".box-iframe").attr("id", "tempId");'

      # Page will execute the script (temporary)
      page.execute_script(script)

      # Working within iframe
      within_frame("tempId") do # within_frama receive the class "tempId"
        expect(find("#cart")).to have_content "Seu carrinho está vazio!" # inside the element "cart" verify if contains the value = "R$ 4,50"
      end
    end
  end
end
