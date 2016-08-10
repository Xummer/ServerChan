Pod::Spec.new do |s|
  s.name         = 'ServerChan'
  s.summary      = 'A debug log based on 「ServerChan」'
  s.version      = '1.0'
  s.license      = 'MIT'
  s.authors      = { 'Xummer' => 'xummer26@gmail.com' }
  s.homepage     = 'https://github.com/Xummer/ServerChan'
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source       = { :git => 'https://github.com/Xummer/ServerChan.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'ServerChan/*.{h,m}'
  s.public_header_files = 'ServerChan/*.{h}'
  s.frameworks = 'UIKit', 'CoreFoundation'
end