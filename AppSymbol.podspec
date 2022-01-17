#
# Be sure to run `pod lib lint MNkAlertView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MNkAlertView'
  s.version          = '1.0.0'
  s.summary          = 'Custom Swift Alert View'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'If you want to create a custom alert view precisely of the design handoff, you can get help from the MNKAlertView framework.'

  s.homepage         = 'https://github.com/MnkGitBox/MNkAlertView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'm.nadeeshan@yahoo.co.uk' => 'malith.mnk93@gmail.com' }
  s.source           = { :git => 'https://github.com/MnkGitBox/MNkAlertView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/malithnadeeshan'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Sources/MNkAlertView/**/*'
  
  # s.resource_bundles = {
  #   'MNkAlertView' => ['MNkAlertView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.swift_version = '5.0'
end
