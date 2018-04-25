//
//  CrashlyticsLogger.swift
//  CoolApp
//

import Foundation
import SwiftyBeaver
import Crashlytics

open class CrashlyticsLogger: BaseDestination {

    override open var defaultHashValue: Int {
        return 350
    }

    override public init() {
        super.init()
        self.minLevel = .debug
    }

    open override func send(_ level: SwiftyBeaver.Level,
                            msg: String,
                            thread: String,
                            file: String,
                            function: String,
                            line: Int,
                            context: Any?) -> String? {
        let formattedString = super.send(level, msg: msg, thread: thread, file: file, function: function, line: line)

        if let crashlyticsString = formattedString {
            CLSLogv("%@", getVaList([crashlyticsString]))
        }
        return formattedString
    }
}

