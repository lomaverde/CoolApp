//
//  LogManager.swift
//  CoolApp
//

import SwiftyBeaver

let log = SwiftyBeaver.self


import Foundation

class LogManager {

    static var crashlyticsLogger = CrashlyticsLogger()
    static let defaultLogLevel = SwiftyBeaver.Level.debug

    static func setup() {

        //Xcode Console
        let console = ConsoleDestination()  // log to Xcode Console

        //swiftybeaver.log file
        let file = FileDestination()  // log to default swiftybeaver.log file
        console.minLevel = defaultLogLevel
        console.levelString.verbose = "VERBOSE"
        console.levelString.debug = "DEBUG"
        console.levelString.info = "INFO"
        console.levelString.warning = "WARNING"
        console.levelString.error = "ERROR"
        file.minLevel = defaultLogLevel

        crashlyticsLogger.minLevel = defaultLogLevel

        #if DEBUG
        file.asynchronously = false
        console.asynchronously = false
        #endif

        //log.addDestination(crashlyticsLogger)
        log.addDestination(file)
        log.addDestination(console)

    }
}
