Pod::Spec.new do |s|
  s.name        = "LoggerAPI"
  s.version     = "1.7.3"
  s.summary     = "Kitura uses this API throughout its implementation when logging"
  s.homepage    = "https://github.com/IBM-Swift/LoggerAPI"
  s.license     = { :type => "Apache License, Version 2.0" }
  s.author     = "IBM"
  s.module_name  = 'LoggerAPI'

  s.requires_arc = true
  s.ios.deployment_target = "10.0"
  s.source   = { :git => "https://github.com/IBM-Swift/LoggerAPI.git", :tag => s.version }
  s.source_files = "Sources/LoggerAPI/*.swift"
  s.pod_target_xcconfig =  {
        'SWIFT_VERSION' => '4.1',
  }
end
