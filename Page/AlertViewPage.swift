//
//  AlertViewPage.swift
//  UIKitCatalogTests_unitTests
//
//  Created by hh- on 12/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import XCTest
import EarlGrey

class AlertViewPage: XCTestCase {

    let e = EarlGreyHelpers()

    let simpleAlertLabel = "simpleAlertLabel"
    let okCancelAlertLabel = "okCancelAlertLabel"
    let threeButtonsAlertLabel = "threeButtonsAlertLabel"
    let textEntryAlertLabel = "textEntryAlertLabel"
    let secureTextEntryAlertLabel = "secureTextEntryAlertLabel"
    let confirmCancelAlertLabel = "confirmCancelAlertLabel"
    let destructiveAlertLabel = "destructiveAlertLabel"

    func assertPageObjects() {
        self.setUp()
        e.assertVisible(simpleAlertLabel)
        e.assertVisible(okCancelAlertLabel)
        e.assertVisible(threeButtonsAlertLabel)
        e.assertVisible(textEntryAlertLabel)
        e.assertVisible(secureTextEntryAlertLabel)
        e.assertVisible(confirmCancelAlertLabel)
        e.assertVisible(destructiveAlertLabel)
        self.tearDown()
    }

    func simpleAlertAppears() {
       self.setUp()
        e.selectByID(simpleAlertLabel)
        .assert(grey_sufficientlyVisible())
        .perform(grey_tap())
        // remove alert to show navigation button
        // for tearDown() to work properly
        e.tapByText("OK")
        self.tearDown()
    }

    func dismissesSimpleAlert() {
        self.setUp()
        e.tapByID(simpleAlertLabel)
        e.assertTextVisible("A Short Title is Best")
        e.tapByText("OK")
        e.selectByText("A Short Title is Best").assert(grey_nil())
        self.tearDown()
    }

    override func setUp() {
        super.setUp()
        e.selectByText("Alert Controller").assert(grey_sufficientlyVisible()).perform(grey_tap())
    }
    
    override func tearDown() {
        e.returnToFrontTableView()
        super.tearDown()
    }
}
