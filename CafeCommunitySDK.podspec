#
# Be sure to run `pod lib lint CafeCommunitySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CafeCommunitySDK'
  s.version          = '1.0.0'
  s.summary          = '韩国咖啡社区SDK封装，支持Swift.'
  s.description      = <<-DESC
                        韩国咖啡社区SDK封装，支持Swift
                       DESC

  s.homepage         = 'https://github.com/qihoogcsdk/CafeCommunitySDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuhaipeng' => 'xuhaipeng@360.cn' }
  s.source           = { :git => 'https://github.com/qihoogcsdk/CafeCommunitySDK.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '11.0'

  # 头文件
  s.public_header_files = 'CafeCommunitySDK/Classes/CafeManager.h'
  
  s.source_files = 'CafeCommunitySDK/Classes/**/*'
  
  # 资源文件
  s.resources = 'CafeCommunitySDK/Assets/*.bundle'

  # 是否是静态库
  s.static_framework  =  true
  
  # 第三方非开源framework(多个)
  s.vendored_frameworks = [
    'CafeCommunitySDK/Classes/Vendor/NaverCafeSDK.framework',
  ]
  
  # 链接设置 重要
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
  
  # # 模拟器排除 Apple Silicon
  # s.pod_target_xcconfig = {
  #     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  # }
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  # 系统动态库(多个)
  s.frameworks = 'AVKit','AVFoundation','MobileCoreServices','SystemConfiguration','MediaPlayer','CoreMedia','AssetsLibrary','Security','ImageIO','QuartzCore','WebKit','SafariServices','ReplayKit'
  
  # 第三方库
  s.dependency "naveridlogin-sdk-ios", '~> 4.1.3'   # naver登录
end
