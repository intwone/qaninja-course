describe "JavaScripts Alerts", :alerts do
  before(:each) do
    visit "/javascript_alerts"
  end

  it "alerts" do
    click_button "Alerta"

    message = page.driver.browser.switch_to.alert.text # switch para a janela de alert que abrirá, guardar o valor do texto na variável message
    expect(message).to eql "Isto é uma mensagem de alerta"
  end

  it "interact with the alert message and confirm" do
    click_button "Confirma"

    message = page.driver.browser.switch_to.alert.text
    expect(message).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
  end

  it "interact with the alert message and not confirm" do
    click_button "Confirma"

    message = page.driver.browser.switch_to.alert.text
    expect(message).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
  end

  it "interact with the alert prompt, accept", :promptAccept do
    accept_prompt(with: "Fernando") do
      click_button "Prompt"
      sleep 2
    end

    expect(page).to have_content "Olá, Fernando"
    sleep 3
  end

  it "interact with the alert prompt, dismiss", :promptDismiss do
    dismiss_prompt(with: nil) do
      click_button "Prompt"
      sleep 2
    end

    expect(page).to have_content "Olá, "
    sleep 3
  end
end
