require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/asusoft/react-native-pjsip.git" }
  s.source_files = "ios/**/*.{h,m}"

  # Dependencies for React Native 0.60+
  s.dependency 'React-Core'
  s.dependency 'React-RCTBridge'
  s.dependency 'React-RCTUtils'
  s.dependency 'React-RCTView'
  s.dependency 'Yoga', :path => "../node_modules/react-native/ReactCommon/yoga"

  # Vendored Frameworks
  s.vendored_frameworks = 'ios/VialerPJSIP.framework'

  # Resource Bundles (if there are any resources like assets, include them here)
  # s.resource_bundles = { 'react-native-pjsip' => ['ios/Assets/*.xcassets'] }
end
