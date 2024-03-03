#
# Be sure to run `pod lib lint TAdvTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TAdvTextField'
  s.version          = '0.1.2'
  s.summary                  = 'Advanced Text Field'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Create Adv Text Field"

   s.homepage                 = 'https://github.com/the-best-is-best/TAdvTextField'
   s.source                   = {:git => 'https://github.com/the-best-is-best/TAdvTextField.git', :tag => s.version.to_s }
   s.authors                  =  { 'the-best-is-best' => 'michelle.raouf@outlook.com' }
   s.license                  = { :type => 'MIT', :file => 'LICENSE' }
   s.swift_version            = '5.5'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'

  s.source_files = 'TAdvTextField/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TAdvTextField' => ['TAdvTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
