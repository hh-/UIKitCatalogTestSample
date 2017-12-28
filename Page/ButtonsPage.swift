//
//  ButtonsPage.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/28/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import EarlGrey
import XCTest

class ButtonsPage: XCTestCase {

// TODO: lazily load page objects
//    var systemTextButton: GREYInteraction

//    override init() {
////        super.init()
////        self.setUp()
//        var systemTextButton = EarlGrey.select(elementWithMatcher: grey_accessibilityID("button_systemText"))
//        super.init()
//    }

    let e = EarlGreyHelpers()

    let systemTextButton = "button_systemText"
    let contactAddButton = "button_contactAdd"
    let detailDisclosureButton = "button_detailDisclosure"
    let imageButton = "button_image"
    let attributedTextButton = "button_attributedText"

    func assertPageObjects() {
        setUp()
        // TODO: change this to "systemTextButton.assertVisible()"
        e.assertVisible(systemTextButton)
        e.assertVisible(systemTextButton)
        e.assertVisible(contactAddButton)
        e.assertVisible(detailDisclosureButton)
        e.assertVisible(imageButton)
        e.assertVisible(attributedTextButton)
        tearDown()
    }

    override func setUp() {
        super.setUp()
        e.selectByText("Buttons").assert(grey_sufficientlyVisible()).perform(grey_tap())
    }

    override func tearDown() {
        e.returnToFrontTableView()
        super.tearDown()
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
}
