#
#  Be sure to run `pod spec lint SJZTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SJZTools"
  s.version      = "0.0.2"
  s.summary      = "整理一下实用方法和属性"
  s.homepage     = "https://github.com/sjzLovecj/SJZTools"
  s.source       = { :git => "https://github.com/sjzLovecj/SJZTools.git", :tag => "#{s.version}" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios, "9.0"
  s.authors      = { "SJZ" => "shaojiazuo@163.com" }

  s.source_files  = "SJZTools/UI/SJZToolsUI.h"
  s.public_header_files = "SJZTools/UI/SJZToolsUI.h"

  s.subspec 'UI' do |us|
    us.source_files = "SJZTools/UI/Label/*.{h,m}","SJZTools/UI/View/*.{h,m}","SJZTools/UI/Button/*.{h,m}","SJZTools/UI/SJZToolsUI.h"
    us.frameworks = "Foundation","UIKit"
    us.public_header_files = "SJZTools/UI/SJZToolsUI.h"
  end

end
