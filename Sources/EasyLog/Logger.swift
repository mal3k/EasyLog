//
//  Logger.swift
//  EasyLog
//
//  Created by Malek TRABELSI on 31/03/2021.
//

import Foundation

public struct Logger {
    public init() {
    }
    public func d(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.d.rawValue) ⎯ \(object)")
    }
    public func e(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.e.rawValue) ⎯ \(object)")
    }
    public func i(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.i.rawValue) ⎯ \(object)")
    }
    public func v(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.v.rawValue) ⎯ \(object)")
    }
    public func w(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.w.rawValue) ⎯ \(object)")
    }
    public func s(object: Any,
                  file:String = #file,
                  line:Int = #line,
                  function: String = #function ) {
        print(string: "[\(date())] [\(fileName(fromFilePath: file))] ⎯ [Line \(line)] ⎯ \(function) \(LogEvent.s.rawValue) ⎯ \(object)")
    }
    fileprivate func print(string: String) {
        #if DEBUG
        Swift.print(string)
        #endif
    }
}
extension Logger {
    fileprivate func fileName(fromFilePath path: String) -> String {
        let components = path.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
    }
    fileprivate func date() -> String {
        // Transform and return the date at the call of this method to String
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: Date())
    }
}
