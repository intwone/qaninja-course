describe "Keyboard", :key do
  before(:each) do
    visit "/key_presses"
  end

  it "simulation the simbols keys" do
    keys = %i[tab escape space enter shift control alt] # %i array de simbolos

    keys.each do |keysSelected|
      find("#campo-id").send_keys keysSelected
      expect(page).to have_content "You entered: " + keysSelected.to_s.upcase
    end
  end

  it "letter sending simulation" do
    letters = %w[a b c d e r g t l d w] # %w arrays de strings

    letters.each do |letterSelected|
      find("#campo-id").send_keys letterSelected
      expect(page).to have_content "You entered: " + letterSelected.to_s.upcase
      sleep 2
    end
  end
end
