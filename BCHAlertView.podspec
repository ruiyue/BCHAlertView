
Pod::Spec.new do |s|

s.name         = "BCHAlertView"
s.version      = "0.0.4"
s.summary      = "对UIAlertView,UIActionSheet,UIAlertController等控件封装的弹出框.."

s.description  = <<-DESC
基于UIAlertView,UIActionSheet,UIAlertController等控件实现的弹出框,简单实用.
DESC

s.homepage     = "https://github.com/Baichenghui/BCHAlertView"
s.license      = "MIT"
s.author             = { "Baichenghui" => "baichenghui88888@gmail.com" }

s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/Baichenghui/BCHAlertView.git", :tag => "#{s.version}" }

s.source_files  = "BCHAlertView", "BCHAlertView/*.{h,m}"
s.requires_arc = true

end
