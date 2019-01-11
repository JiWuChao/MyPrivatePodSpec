#
# Be sure to run `pod lib lint JWCPControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    `echo "4.0" > .swift-version`
  s.name             = 'JWCPControl'
  s.version          = '0.1.1'
  s.summary          = ' test JWCPControl.'
  
  s.description      = ' no  long description of the JWCPControl.'

  s.homepage         = 'https://github.com/JiWuChao/JWCPControl.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiwuchao' => 'jiwuchao123@gmial.com' }
  s.source           = { :git => 'https://github.com/JiWuChao/JWCPControl.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'JWCPControl/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JWCPControl' => ['JWCPControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
