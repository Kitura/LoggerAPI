/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

public enum LoggerMessageType: String {
    case verbose = "VERBOSE"
    case info = "INFO"
    case debug = "DEBUG"
    case warning = "WARNING"
    case error = "ERROR"
    
    public func logValue() -> Int {
        switch self {
        case .verbose:
            return 1
        case .info:
            return 2
        case .debug:
            return 3
        case .warning:
            return 4
        case .error:
            return 5
        }
    }
}

public protocol Logger {

    func log(_ type: LoggerMessageType, msg: String,
        functionName: String, lineNum: Int, fileName: String )

}

public class Log {

    public static var logger: Logger?


    public static func verbose(_ msg: String, functionName: String = #function,
        lineNum: Int = #line, fileName: String = #file ) {
            logger?.log( .verbose, msg: msg,
                functionName: functionName, lineNum: lineNum, fileName: fileName)
    }

    public class func info(_ msg: String, functionName: String = #function,
        lineNum: Int = #line, fileName: String = #file) {
            logger?.log( .info, msg: msg,
                functionName: functionName, lineNum: lineNum, fileName: fileName)
    }

    public class func warning(_ msg: String, functionName: String = #function,
        lineNum: Int = #line, fileName: String = #file) {
            logger?.log( .warning, msg: msg,
                functionName: functionName, lineNum: lineNum, fileName: fileName)
    }

    public class func error(_ msg: String, functionName: String = #function,
        lineNum: Int = #line, fileName: String = #file) {
            logger?.log( .error, msg: msg,
                functionName: functionName, lineNum: lineNum, fileName: fileName)
    }

    public class func debug(_ msg: String, functionName: String = #function,
        lineNum: Int = #line, fileName: String = #file) {
            logger?.log( .debug, msg: msg,
                functionName: functionName, lineNum: lineNum, fileName: fileName)
    }
}
