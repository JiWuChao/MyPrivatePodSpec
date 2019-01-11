#
# Be sure to run `pod lib lint JWCPControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    `echo "4.2" > .swift-version`
  s.name             = 'JWCPControl'
  s.version          = '0.1.5'
  s.summary          = ' test JWCPControl.'
  
  s.description      = ' no  long description of the JWCPControl.'

  s.homepage         = 'https://github.com/JiWuChao/JWCPControl.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiwuchao' => 'jiwuchao123@gmial.com' }
  s.source           = { :git => 'https://github.com/JiWuChao/JWCPControl.git', :tag => s.version.to_s,:submodules=>true }
  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'
#  s.source_files = 'JWCPControl/Classes/**/*'
  s.subspec 'NavBar' do |ss|
      ss.source_files = 'JWCPControl/Classes/NavBar/**/*'
#      ss.public_header_files = 'JWCPControl/Classes/NavBar/*.swift'
  ss.dependency 'JWCPControl/Color'
  end
  s.subspec 'Color' do |ss|
      ss.source_files = 'JWCPControl/Classes/Color/**/*'
      #      ss.public_header_files = 'JWCPControl/Classes/NavBar/*.swift'
  end
  
  s.subspec 'PageControl' do |ss|
      ss.source_files = 'JWCPControl/Classes/PageControl/**/*'
      ss.dependency 'JWCPControl/NavBar'
      ss.dependency 'JWCPControl/Color'
      #      ss.public_header_files = 'JWCPControl/Classes/NavBar/*.swift'
  end
  
  # s.resource_bundles = {
  #   'JWCPControl' => ['JWCPControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
