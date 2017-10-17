require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|

  s.name           = "react-native-photo-view"
  s.version        = package['version'].gsub(/v|-beta/, '')
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/alwx/react-native-photo-view.git', :tag => "v#{s.version}"}
  s.platform       = :ios, '7.0'
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"

end
