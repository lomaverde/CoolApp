//
//  AnalyticsManager.swift
//  CoolApp
//
//  Created by Mei Yu on 2/23/18.
//  Copyright © 2018 Say Say K. All rights reserved.
//

import Foundation
import Mixpanel
import Fabric
import Crashlytics

protocol AnalyticsUser {

    // property userIdentity  // when it changes, call setUserIdentity for all MixpanelManager
    func setUserIdentity()

}

class AnalyticsManager: AnalyticsUser  {

    static func setup() {
        _ = MixpanelManager.shared
        Fabric.with([Crashlytics.self])
    }

    func setUserIdentity() {

    }

}

class MixpanelManager: AnalyticsManager {

    // MARK: - Properties

    static let shared = MixpanelManager()


    // Initialization



    private override init() {
        Mixpanel.initialize(token: "6379035633cdc81f1fc00ae0a82b5156")
        Mixpanel.mainInstance().loggingEnabled = true
    }

    override func setUserIdentity() {

    }

}
