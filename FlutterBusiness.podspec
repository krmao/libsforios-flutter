#
# Be sure to run `pod lib lint FlutterBusiness.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlutterBusiness'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FlutterBusiness.'
  s.homepage         = 'https://github.com/krmao/libsforios-flutter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Codes Dancing Team' => '767709667@qq.com' }
  s.source           = { :git => 'https://github.com/krmao/libsforios-flutter.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'FlutterBusiness/Classes/**/*.{h,m,mm}'
  # s.resource_bundles = {
  #   'FlutterBusiness' => ['FlutterBusiness/Assets/*.png']
  # }
  
  # s.social_media_url = 'https://github.com/krmao'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'FlutterBusinessDebug' do |sp|
    sp.vendored_frameworks = [
        'FlutterBusiness/Classes/FlutterBusinessDebug/App.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/flutter_boost.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/FlutterPluginRegistrant.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/FMDB.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/path_provider.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/shared_preferences.framework',
        'FlutterBusiness/Classes/FlutterBusinessDebug/sqflite.framework',
    ]
  end
  s.subspec 'FlutterBusinessRelease' do |sp|
    sp.vendored_frameworks = [
        'FlutterBusiness/Classes/FlutterBusinessRelease/App.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/flutter_boost.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/FlutterPluginRegistrant.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/FMDB.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/path_provider.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/shared_preferences.framework',
        'FlutterBusiness/Classes/FlutterBusinessRelease/sqflite.framework',
    ]
  end

end
