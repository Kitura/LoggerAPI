<p align="center">
    <a href="http://kitura.dev/">
        <img src="https://raw.githubusercontent.com/Kitura/Kitura/master/Sources/Kitura/resources/kitura-bird.svg?sanitize=true" height="100" alt="Kitura">
    </a>
</p>


<p align="center">
    <a href="https://ibm-swift.github.io/LoggerAPI/index.html">
    <img src="https://img.shields.io/badge/apidoc-LoggerAPI-1FBCE4.svg?style=flat" alt="APIDoc">
    </a>
    <a href="https://travis-ci.org/Kitura/LoggerAPI">
    <img src="https://travis-ci.org/Kitura/LoggerAPI.svg?branch=master" alt="Build Status - Master">
    </a>
    <img src="https://img.shields.io/badge/os-macOS-green.svg?style=flat" alt="macOS">
    <img src="https://img.shields.io/badge/os-linux-green.svg?style=flat" alt="Linux">
    <img src="https://img.shields.io/badge/license-Apache2-blue.svg?style=flat" alt="Apache 2">
    <a href="http://swift-at-ibm-slack.mybluemix.net/">
    <img src="http://swift-at-ibm-slack.mybluemix.net/badge.svg" alt="Slack Status">
    </a>
</p>

# LoggerAPI

A logger protocol that provides a common logging interface for different kinds of loggers. In addition, a class with a set of static functions for logging within your code is provided.

[Kitura](https://github.com/Kitura/Kitura) uses this API throughout its implementation when logging.

## Usage

#### Add dependencies

Add the `LoggerAPI` package to the dependencies within your application’s `Package.swift` file. Substitute `"x.x.x"` with the latest `LoggerAPI` [release](https://github.com/Kitura/LoggerAPI/releases):

```swift
.package(url: "https://github.com/Kitura/LoggerAPI.git", from: "x.x.x")
```
Add `LoggerAPI` to your target's dependencies:
```swift
.target(name: "example", dependencies: ["LoggerAPI"]),
```

#### Import package

```swift
import LoggerAPI
````

#### Log messages

Add log messages to your application:
```swift
Log.warning("This is a warning.")
Log.error("This is an error.")
```

#### Define a logger

You need to define a `logger` in order to output these messages. You may wish to write your own `Logger` implementation, or you can use `HeliumLogger` that writes to standard output:
```swift
import LoggerAPI
import HeliumLogger

let myLogger = HeliumLogger(.info)
Log.logger = myLogger
```
You can find out more about HeliumLogger [here](https://github.com/Kitura/HeliumLogger/blob/master/README.md).

#### Logging messages to swift-log

You can direct your log messages to be logged via [swift-log](https://github.com/apple/swift-log) by setting the `swiftLogger` property:
```swift
import LoggerAPI
import Logging

let myLogger = Logging.Logger(label: "myLogger")
myLogger.logLevel = .notice
Log.swiftLogger = myLogger
```
If both `logger` and `swiftLogger` are set, then log messages will be sent to both logging backends. The log level configured for a LoggerAPI Logger and a swift-log Logger are independent, so may be used to log at different levels.

Note that because the hierarchy of log levels defined by LoggerAPI and swift-log is slightly different, a mapping is defined between the levels. See the documentation for `Log.isLogging()` for details.

## API documentation

For more information visit our [API reference](http://ibm-swift.github.io/LoggerAPI/).

## Community

We love to talk server-side Swift, and Kitura. Join our [Slack](http://swift-at-ibm-slack.mybluemix.net/) to meet the team!

## License

This library is licensed under Apache 2.0. Full license text is available in [LICENSE](https://github.com/Kitura/LoggerAPI/blob/master/LICENSE.txt).
