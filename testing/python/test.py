from appium import webdriver
from typing import Any, Dict
from appium.options.common import AppiumOptions
from appium.webdriver.common.appiumby import AppiumBy
import time

cap: Dict[str, Any] = {
    "platformName": "Android",
    "platformVersion": "13",
    "deviceName": "emulator-5554",
    "app": "E:/VS Code/Apps/testing/build/app/outputs/flutter-apk/app-debug.apk",
    "automationName": "UiAutomator2",
    "appPackage": "com.example.testing",
    "appActivity": "com.example.testing.MainActivity",
    "language": "en",
    "locale": "US",
    "uiautomator2ServerLaunchTimeout": 5000,
    "uiautomator2ServerInstallTimeout": 5000,
    "autoGrantPermissions": True,
}

url = "http://localhost:4724"
driver = webdriver.Remote(url, options=AppiumOptions().load_capabilities(cap))

try:
    time.sleep(5)

    show_message_button = driver.find_element(
        by=AppiumBy.ACCESSIBILITY_ID, value="Show Message"
    )
    show_message_button.click()
    print("Clicked 'Show Message' button")

    time.sleep(2)

    close_message_button = driver.find_element(
        by=AppiumBy.ACCESSIBILITY_ID, value="Close Message"
    )
    close_message_button.click()
    print("Closed the message popup")

    show_image_button = driver.find_element(
        by=AppiumBy.ACCESSIBILITY_ID, value="Show Image"
    )
    show_image_button.click()
    print("Clicked 'Show Image' button")

    time.sleep(2)

    close_image_button = driver.find_element(
        by=AppiumBy.ACCESSIBILITY_ID, value="Close Image"
    )
    close_image_button.click()
    print("Closed the image popup")

finally:
    driver.quit()
