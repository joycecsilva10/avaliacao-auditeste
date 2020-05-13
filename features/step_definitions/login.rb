Dado("que na tela de login") do
	@accessPage.load
end

Quando("preencher o {string} e {string}") do |email, senha|
  @loginPage.login(email, senha)
end

Então("é exibido o nome {string}") do |assertName|
	expect(assert_selector('#ctl01 > div.container.body-content > p')).to eq true
	has_content?(assertName)
end

Então("a {string} de error de dados em branco") do |mensagem|
  expect(@loginPage.blank_field_alert.text).to eql(mensagem)
end

Então("a {string} de erro") do |mensagem|
	expect(@loginPage.alert_error.text).to eql(mensagem)
end
