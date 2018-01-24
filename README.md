# Cucumber-appium
Mobile automation testing tool

## Install:
In order to start testing, make sure the following is installed and ready.
1. Java:1.8
2. NodeJS: 8.9.0
3. Install Appium: `npm install -g appium`
4. Install Appium-doctor: `npm install -g appium-doctor`
5. Run Appium-doctor to see what else need to be installed (Android & Xcode if not using real devices)
6. Setup JAVA_HOME and ANDROID_HOME
7. Cucumber: 3.1.0

## Usage:
1. To run all test cases:
`cucumber`

2. To run specific test cases, use cucumber tagging:
`cucumber -t @iOS_Test` or `cucumber -t @Android_Test`

## Note:
For cloud based device farm service, please add account credential in features/support/env.rb
