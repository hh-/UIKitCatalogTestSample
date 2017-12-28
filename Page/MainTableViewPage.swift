//
//  MainTableViewPage.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/19/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import EarlGrey
import XCTest

class MainTableViewPage: UICatalogTest {

    let e = EarlGreyHelpers()

    let activityIndicators = "Activity Indicators"
    let alertController = "Alert Controller"
    let buttons = "Buttons"
    let datePicker = "Date Picker"
    let imageView = "Image View"
    let pageControl = "Page Control"
    let pickerView = "Picker View"
    let progressViews = "Progress Views"
    let search = "Search"
    let segmentedControls = "Segmented Controls"
    let sliders = "Sliders"
    let stackViews = "Stack Views"
    let steppers = "Steppers"
    let switches = "Switches"
    let textFields = "Text Fields"
    let textView = "Text View"
    let toolbars = "Toolbars"
    let webView = "Web View"

    func testPageObjects() {
        setUp()
        e.assertTextVisible(activityIndicators)
        e.assertTextVisible(alertController)
        e.assertTextVisible(buttons)
        e.assertTextVisible(datePicker)
        e.assertTextVisible(imageView)
        e.assertTextVisible(pageControl)
        e.assertTextVisible(pickerView)
        e.assertTextVisible(progressViews)
        e.assertTextVisible(search)
        e.assertTextVisible(segmentedControls)
        e.assertTextVisible(sliders)

        e.selectByID("mainTableView").perform(grey_scrollToContentEdge(.bottom))

        e.assertTextVisible(stackViews)
        e.assertTextVisible(steppers)
        e.assertTextVisible(switches)
        e.assertTextVisible(textFields)
        e.assertTextVisible(textView)
        e.assertTextVisible(toolbars)
        e.assertTextVisible(webView)
    }

    func testScrollDown() {
        e.selectByID("mainTableView").perform(grey_scrollToContentEdge(.bottom))
            .assert(grey_scrolledToContentEdge(.bottom))
    }

    // TODO: figure out why this fails (navigation bar?)
//    func testScrollUp() {
//        setUp()
//        EarlGrey.select(elementWithMatcher: grey_accessibilityID("mainTableView")).perform(grey_scrollToContentEdge(.top))
//            .assert(grey_scrolledToContentEdge(.top))
//        tearDown()
//    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        e.selectByID("mainTableView").perform(grey_scrollToContentEdge(.top))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        e.selectByID("mainTableView").perform(grey_scrollToContentEdge(.top))
        super.tearDown()
    }
}
