# TAdvTextField
<!-- 
[![CI Status](https://img.shields.io/travis/`the-best-is-best`/TAdvTextField.svg?style=flat)](https://travis-ci.org/the-best-is-best/TAdvTextField) -->
[![Version](https://img.shields.io/cocoapods/v/TAdvTextField.svg?style=flat)](https://cocoapods.org/pods/TAdvTextField)
[![License](https://img.shields.io/cocoapods/l/TAdvTextField.svg?style=flat)](https://cocoapods.org/pods/TAdvTextField)
[![Platform](https://img.shields.io/cocoapods/p/TAdvTextField.svg?style=flat)](https://cocoapods.org/pods/TAdvTextField)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
          VStack{
            AdvTextField(placeHolder: "Email",  value: $viewModel.email){
                print("new v ", viewModel.email)
            }.overlay(
                Rectangle()
                    .frame(height: 1)
                    .offset(y: 20)  // Adjust vertical offset as needed
                    .foregroundColor(Color.black)  // Set underline color
                    .edgesIgnoringSafeArea(.all).padding()
            )

            AdvSecureTextField(
                imageColor: .red,
                placeHolder: "Password",  value: $viewModel.email){
                print("new v ", viewModel.email)
            }.overlay(
                Rectangle()
                    .frame(height: 1)
                    .offset(y: 20)  // Adjust vertical offset as needed
                    .foregroundColor(Color.black)  // Set underline color
                    .edgesIgnoringSafeArea(.all).padding()
            )

        }

 ```
## Installation

TAdvTextField is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TAdvTextField'
```

## Author

   the-best-is-best, michelle.raouf@outlook.com

## License

TAdvTextField is available under the MIT license. See the LICENSE file for more info.
