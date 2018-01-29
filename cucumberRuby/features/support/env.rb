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
      app: "bs://222d912611650a5f7be543a9764512df7aa262cf",
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
