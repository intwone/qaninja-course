describe "Switching windows", :windows do
  before(:each) do
    visit "/windows"
  end

  it "new windows" do
    # abre uma nova janela por:
    # click_link "texto do link"
    new_window = window_opened_by { click_link "Clique aqui" }

    # switch windows
    within_window -> { page.title == "Nova Janela" } do
      # espero que página contenha "texto"
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
    end

    # fecha a janela
    new_window.close

    # espero que a página seja fechada (closed?) = true
    expect(new_window.closed?).to be true
  end
end
