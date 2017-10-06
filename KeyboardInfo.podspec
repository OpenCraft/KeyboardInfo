#
# Be sure to run `pod lib lint KeyboardInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KeyboardInfo'
  s.version          = '1.0.0'
  s.summary          = 'A swift library that provides information of the keyboard when it appears.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A quick solution to discover the properties of iPhone's keyboard. With KeyboardInfo you have easy access
to keyboard's height (includes height of accesssory view if its activated), animation curve and animation duration time.
                       DESC

  s.homepage         = 'https://github.com/OpenCraft/KeyboardInfo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Luis Filipe Campani' => 'luisfilipecampani@gmail.com' }
  s.source           = { :git => 'https://github.com/OpenCraft/KeyboardInfo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/luiscampani'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KeyboardInfo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KeyboardInfo' => ['KeyboardInfo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
