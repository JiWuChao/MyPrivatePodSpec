#
# Be sure to run `pod lib lint SNNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SNNetwork'
  s.version          = '0.0.6'
  s.summary          = '基于Moya CleanJson 的网络封装.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '基于Moya CleanJson 的网络封装.每个request 都是一个单独的减少耦合，submodule中是封装alamofire的网络监听类，主要是为了统一'

  s.homepage         = 'https://github.com/jiwuchao/SNNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiwuchao' => 'jiwuchao123@gmail.com' }
  s.source           = { :git => 'https://github.com/JiWuChao/SNNetwork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version         = '5.0'
  #s.default_subspec       = 'Core'
  #s.source_files          = 'SNNetwork/Classes/**/*'
  #s.require_arc           = true

    s.subspec 'Core' do |ss|
    ss.source_files = 'SNNetwork/Classes/Core'
    ss.dependency 'Moya', '~> 13.0.1'
    ss.dependency 'CleanJSON', '~> 0.9.3'
    end

  # s.resource_bundles = {
  #   'SNNetwork' => ['SNNetwork/Assets/*.png']
  # }

    s.subspec 'NetworkReachability' do |ss|
    ss.source_files = 'SNNetwork/Classes/NetworkReachability'
    ss.dependency "Alamofire", "~> 4.1"
    end

end
