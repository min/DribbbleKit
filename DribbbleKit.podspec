Pod::Spec.new do |s|
  s.name         = 'DribbbleKit'
  s.version      = '0.0.1'
  s.summary      = 'Objective-C client framework for Dribbble API'
  s.homepage     = 'https://github.com/min/DribbbleKit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Min Kim' => 'me@mink.im' }
  s.source       = { :git => 'https://github.com/min/Dribbble.git', :tag => "v#{s.version}" }

  s.source_files = 'DribbbleKit/**/*.{h,m}'
  s.requires_arc = true
  s.dependency 'AFNetworking'
  
  s.ios.deployment_target = '5.0'
  s.ios.frameworks = 'MobileCoreServices', 'SystemConfiguration', 'Security', 'CoreGraphics'

  s.prefix_header_contents = <<-EOS
  #import <Availability.h>

  #if __IPHONE_OS_VERSION_MIN_REQUIRED
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <MobileCoreServices/MobileCoreServices.h>
    #import <Security/Security.h>
  #else
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <CoreServices/CoreServices.h>
    #import <Security/Security.h>
  #endif
  EOS
end