Before do
	page.driver.browser.manage.window.maximize

	@accessPage = AcessPage.new
	@loginPage = LoginPage.new
end

After do
	Capybara.reset_sessions!
end

# time out
Capybara.default_max_wait_time = 15

require_relative "helper.rb"
After do |scenario|
    @helper = Helper.new
    @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, "")
    @helper.take_screenshot(@nome, "screenshots") if scenario.failed?
    unless @helper.take_screenshot(@nome, "screenshots")
	end
end