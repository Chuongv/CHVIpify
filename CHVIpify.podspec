#
# Be sure to run `pod lib lint CHVIpify.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CHVIpify"
  s.version          = "0.1.0"
  s.summary          = "An Objective-C library for using ipify."

  s.description      = "Fetch user's ip by using CHVIpify via ipify.org"

  s.homepage         = "https://github.com/chuongv/CHVIpify"
  s.license          = 'MIT'
  s.author           = { "Chuong Vu" => "chuongv@gmail.com" }
  s.source           = { :git => "https://github.com/chuongv/CHVIpify.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.resource_bundles = {
    'CHVIpify' => ['Pod/Assets/*.png']
  }
  s.public_header_files = 'Pod/Classes/**/*.h'
end
