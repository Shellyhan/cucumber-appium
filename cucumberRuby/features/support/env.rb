require "yaml"
require "rspec"
require "appium_lib"

#cloud-based device farm credentials:
# @accessKey_sl = ""
# @userName_sl = ""

# @accessKey_bs = ""
# @userName_bs = ""

# configure android device from browser stack:
def caps_android_bs
  { caps: {
      # for browser Stack - android:
      device: "Google Pixel",
      platformName: "Android",
      app: "bs://92e12f5436cab8ff81affed5d77c98624d6d29c2",
      newCommandTimeout: "3600"
  },
    appium_lib: {
        server_url: "https://#{@userName_bs}:#{@accessKey_bs}@hub.browserstack.com/wd/hub"
    }
  }
end

# configure iOS device from sauce labs:
def caps_ios_sl
  { caps: {
      # for sauceLabs - ios:
      deviceName: "iPhone 6",
      platformName: "iOS",
      platformVersion: "8.4",
      app: "https://s3.amazonaws.com/appium/TestApp8.4.app.zip",
      deviceOrientation: "portrait",
      name: "test sample app",
      newCommandTimeout: "3600"
  },
    appium_lib: {
        server_url: "https://#{@userName_sl}:#{@accessKey_sl}@ondemand.saucelabs.com:443/wd/hub"
    }
  }
end

@caps_ios_sl = caps_ios_sl
@caps_android_bs = caps_android_bs
