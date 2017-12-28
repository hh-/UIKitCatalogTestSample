//
//  InitialTableViewPage.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/19/17.
//  Copyright © 2017 Apple. All rights reserved.
//

//import XCTest
import EarlGrey
//import CoreFoundation

class InitialTableViewPage: UICatalogTest {

  func testPageObjects() {
    EarlGrey.select(elementWithMatcher: grey_text("Activity Indicators")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Alert Controller")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Buttons")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Date Picker")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Image View")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Page Control")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Picker View")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Progress Views")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Search")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Segmented Controls")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Sliders")).assert(grey_sufficientlyVisible())

    EarlGrey.select(elementWithMatcher: grey_accessibilityID("mainTableView")).perform(grey_scrollToContentEdge(.bottom))

    EarlGrey.select(elementWithMatcher: grey_text("Stack Views")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Steppers")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Switches")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Text Fields")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Text View")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Toolbars")).assert(grey_sufficientlyVisible())
    EarlGrey.select(elementWithMatcher: grey_text("Web View")).assert(grey_sufficientlyVisible())
  }

  func testScrollDown() {
    EarlGrey.select(elementWithMatcher: grey_accessibilityID("mainTableView")).perform(grey_scrollToContentEdge(.bottom))
      .assert(grey_scrolledToContentEdge(.bottom))
  }

  // TODO: figure out what this needs to work with the navigation bar on top?x`
  func testScrollUp() {
    EarlGrey.select(elementWithMatcher: grey_accessibilityID("mainTableView")).perform(grey_scrollToContentEdge(.top))
    .assert(grey_scrolledToContentEdge(.top))
  }



  //    EarlGrey.select(elementWithMatcher: grey_accessibilityID("button_sytemText"))
  //      .assert(grey_sufficientlyVisible())
}
