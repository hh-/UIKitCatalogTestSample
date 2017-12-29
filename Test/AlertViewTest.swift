//
//  AlertViewTest.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import EarlGrey


class AlertViewTest: UICatalogTest {
    var alertView: AlertViewPage = AlertViewPage()

    func testAlertView() {
        alertView.assertPageObjects()
        alertView.simpleAlertAppears()
        alertView.dismissesSimpleAlert()
    }
}
