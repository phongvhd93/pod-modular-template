#
#  Be sure to run `pod spec lint StyleGuide.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "StyleGuide"
  spec.version      = "0.0.1"
  spec.summary      = "Where all the fonts and colors locate"

  spec.homepage     = "http://www.nimblehq.co"
  spec.license      = "MIT"
  spec.author             = { "Phong Vo" => "phong.d@nimblehq.co" }

  spec.ios.deployment_target = '14.0'
  spec.swift_version = '5.8'

  spec.source       = { :git => 'https://github.com/phongvhd93/test-spm-versioning.git', :tag => "#{spec.version}" }

  spec.source_files = 'StyleGuide/**/*.swift','StyleGuide/Sources/**/*.swift', 'StyleGuide/Sources/**/**/*.swift'
  spec.resource_bundles = {
    'StyleGuide' => ['StyleGuide/Resources/*.otf']
  }
  spec.static_framework = true
end
