#
# Be sure to run `pod lib lint JWCPodSubModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JWCPodSubModule'
  s.version          = '0.1.6'
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
  
#  子模块的设置方法
#  优点：
#  1、可视化效果比较好，如果不用子模块则会在使用时全部文件在一个文件夹内，使用子模块之后，在大文件下有各个子模块文件夹
#  2、如果私有库的模块比较多，而使用者只使用其中一部分，那么不用全部把代码下载下来 如只使用VM 那么在使用的项目中的Podfile只需要写 `JWCPodSubModule/VM` 就行了。有利于减小代码量
#    注意事项：
#  1、 s.source           = { :git => 'https://github.com/JiWuChao/JWCPodSubModule.git', :tag => s.version.to_s ,:submodules=>true } 中的 一定要添加 ,:submodules=>true 这一句
#  2 如果子模块A需要使用子模块B 那么就需要添加依赖 （dependency） 如，本列中子模块Model 依赖 子模块 VM (写法如下)。在项目中如果只使用 `Model` 在podfile中写 `JWCPodSubModule/Model` 时，也会把模块VM的代码下载下来

  s.subspec 'Model' do |ss|
      ss.source_files = 'JWCPodSubModule/Classes/Model/**/*.{h,m,swift}'
      ss.public_header_files = 'JWCPodSubModule/Classes/Model/**/*.h'
      # 表示这个‘Model’的子模块依赖于VM子模块
      ss.dependency 'JWCPodSubModule/VM'
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
#私有pod的依赖 有几个就分开写几行 在使用此私有库时 即使在使用的工程中的Podfile 中没有写 'AFNetworking', '~> 2.3' 也会自动pod下来 'AFNetworking', '~> 2.3' 的代码，如果有子模块时 无论使用哪个子模块 都会下载这个依赖的代码
    s.dependency 'AFNetworking', '~> 2.3'
end
