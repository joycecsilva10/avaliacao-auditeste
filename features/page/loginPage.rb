class LoginPage < SitePrism::Page

	element :input_email,       '#MainContent_txt_usu_email'
	element :input_senha,       '#MainContent_txt_sen_descricao'
	element :btn_login,         '#MainContent_BtnEntrar'
	element :alert_error,       '#MainContent_lbl_Msg'
	element :blank_field_alert, '.ajax__validatorcallout_error_message_cell'
	
	def login(email, pass)
			input_email.set(email)
			input_senha.set(pass)
			btn_login.click
	end
end