#
# Be sure to run `pod lib lint JWCPodSubModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JWCPodSubModule'
  s.version          = '0.1.5'
  s.summary          = 'JWCPodSubModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                just test JWCPodSubModule
                       DESC

  s.homepage         = 'https://github.com/JiWuChao/JWCPodSubModule.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiwuchao' => 'jiwuchao123@gmail.com' }
  s.source           = { :git => 'https://github.com/JiWuChao/JWCPodSubModule.git', :tag => s.version.to_s ,:submodules=>true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'JWCPodSubModule/Classes/**/*'
  s.frameworks = 'UIKit'
  s.requires_arc = true
  
  
  s.subspec 'Model' do |ss|
      ss.source_files = 'JWCPodSubModule/Classes/Model/**/*.{h,m,swift}'
      ss.public_header_files = 'JWCPodSubModule/Classes/Model/**/*.h'
    end
  s.subspec 'Views' do |ss|
      ss.source_files = 'JWCPodSubModule/Classes/views/**/*.{h,m,swift}'
      ss.public_header_files = 'JWCPodSubModule/Classes/views/**/*.h'
  end
  s.subspec 'VM' do |ss|
      ss.source_files = 'JWCPodSubModule/Classes/VM/**/*.{h,m,swift}'
      ss.public_header_files = 'JWCPodSubModule/Classes/VM/**/*.h'
  end
  # s.resource_bundles = {
  #   'JWCPodSubModule' => ['JWCPodSubModule/Assets/*.png']
  # }

#   s.public_header_files = 'JWCPodSubModule/Classes/**/*.h'
    s.dependency 'AFNetworking', '~> 2.3'
end
