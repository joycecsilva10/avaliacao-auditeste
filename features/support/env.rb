require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require 'site_prism'


Capybara.register_driver :selenium_standalone do |app|
  args = %w[--no-default-browser-check --start-maximized]
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {
                                                            "args" => args,
                                                        })

  Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    url: "http://localhost:4444/wd/hub",
    desired_capabilities: caps,
  )
end

Capybara.register_driver :chrome_headless do |app|
  args = %w[window-size=1440,900 headless disable-gpu]

  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "chromeOptions" => {
      "args" => args,
    },
  )

  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end

Capybara.configure do |config|
  config.default_driver = (ENV["DRIVER"] || "selenium_chrome").to_sym

  config.default_max_wait_time = 10
end