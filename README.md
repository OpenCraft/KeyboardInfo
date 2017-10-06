# KeyboardInfo

[![CI Status](http://img.shields.io/travis/luis.silva@ilegra.com/KeyboardInfo.svg?style=flat)](https://travis-ci.org/luis.silva@ilegra.com/KeyboardInfo)
[![Version](https://img.shields.io/cocoapods/v/KeyboardInfo.svg?style=flat)](http://cocoapods.org/pods/KeyboardInfo)
[![License](https://img.shields.io/cocoapods/l/KeyboardInfo.svg?style=flat)](http://cocoapods.org/pods/KeyboardInfo)
[![Platform](https://img.shields.io/cocoapods/p/KeyboardInfo.svg?style=flat)](http://cocoapods.org/pods/KeyboardInfo)

## Usage

All you need to is add the setup to `AppDelegate`
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    KeyboardInfo.shared.setup()
    return true
}
```

Then, can access it's singleton and get the provided informations
```swift
KeyboardInfo.shared.height
KeyboardInfo.shared.animationCurve
KeyboardInfo.shared.animationDuration
```
*Informations are updated only when the keyboard appears*
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

KeyboardInfo is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KeyboardInfo'
```

## Author

Luis Filipe Campani, luisfilipecampani@gmail.com

## License

KeyboardInfo is available under the MIT license. See the LICENSE file for more info.
