describe "login 2", :logintwo, :smoke do
  before(:each) do
    # Acessa a página a ser testada
    visit "/login2"
  end

  it "with date of birth" do
    # Fill in the login fields
    find("#userId").set "stark"
    find("#passId").set "jarvis!"

    loginForm = find("#login")

    # Case the variable loginForm (search by text)
    case loginForm.text # take the text of the #login and ask
    when /Dia/ # when contains the "Dia" word in the text
      day = "29" # find the #day and set the field with value 29
      find("#day").set day
      expect(page).to have_content "29"
    when /Mês/ # when contains the "Mês" word in the text
      month = "05"
      find("#month").set month
      expect(page).to have_content "05"
    when /Ano/ # when contains the "Ano" word in the text
      year = "1970"
      find("year").set year
      expect(page).to have_content "1970"
    end
  end
end
