Pod::Spec.new do |s|

  s.name              = "LoggerAPI"
  s.module_name       = 'LoggerAPI'
  s.version           = "2.0.0"
  s.cocoapods_version = '~> 1.16'
  s.summary           = "A logger protocol that provides a common logging interface for different kinds of loggers."
  s.homepage          = "https://github.com/Kitura/LoggerAPI"
  s.license           = {
                          :type => "Apache License, Version 2.0"
                        }
  s.source            = {
                          :git => "https://github.com/Kitura/LoggerAPI.git",
                          :tag => s.version
                        }

  s.author            = "IBM and the Kitura project authors"

  s.swift_version = '5.8'
  
  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "11.0"
  s.tvos.deployment_target = "12.0"
  s.watchos.deployment_target = "8.0"
  
  s.source_files = "Sources/**/*.swift"
  
  s.dependency 'SwiftlyLogging', '~> 1.6'
end
