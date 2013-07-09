Pod::Spec.new do |s|
  s.name         = "PageMunch"
  s.version      = "0.1"
  s.summary      = "An ObjectiveC SDK for the PageMunch web crawler API."
  s.homepage     = "https://github.com/PageMunch/pagemunch-objc"

  s.license = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  
  s.authors      = { "Andrew Yates" => "contact@andydev.co.uk" }
  s.source       = { :git => "https://github.com/PageMunch/pagemunch-objc" }
  s.ios.deployment_target = '5.0'
  s.ios.frameworks  = 'UIKit'
  s.requires_arc = true
  s.ios.source_files = 'PageMunchSDK/**/*.{h,m}'
end
