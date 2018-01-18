require "yaml"
require "rspec"
require "sauce_whisk"
require "appium_lib"

caps1 = @caps_android_bs
caps2 = @caps_ios_sl


Before('@Android_Test') do
	@driver = Appium::Driver.new(caps1, true)
	Appium.promote_appium_methods Object
	@driver.start_driver
end


Before('@iOS_Test') do
	@driver = Appium::Driver.new(caps2, true)
	Appium.promote_appium_methods Object
	@driver.start_driver
end


After do
  sleep 3
  @driver.driver_quit
end