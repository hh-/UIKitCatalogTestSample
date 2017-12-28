//
//  InitialTableViewTest.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

//import XCTest
import EarlGrey

class InitialTableViewTest: UICatalogTest {

  var mainTableView: InitialTableViewPage = InitialTableViewPage()

  func testMainTableViewPage() {
    mainTableView.testPageObjects()
//    mainTableView.testScrollUp()
    mainTableView.testScrollDown()
  }
}

//    EarlGrey.select(elementWithMatcher: grey_text("Buttons")).assert(grey_sufficientlyVisible())
//    EarlGrey.select(elementWithMatcher: grey_text("Buttons")).perform(grey_tap())
//    sleep(3)

//    let test1 = InitialTableViewPage()
//    EarlGrey.select(elementWithMatcher: grey_accessibilityID("mainMenuCellTitle")).perform(grey_tap())
//    EarlGrey.select(elementWithMatcher: grey_text("Buttons")).perform(grey_tap())
//    EarlGrey.select(elementWithMatcher: grey_accessibilityID("button_sytemText"))
//      .assert(grey_sufficientlyVisible())
//    sleep(3)
//    EarlGrey.select(elementWithMatcher: grey_text("Buttons")).assert(grey_sufficientlyVisible())
//    test1.testPageObjects()
//    sleep(3)
