//
//  ButtonsPageTest.swift
//  UIKitCatalogTests_unitTests
//
//  Created by hh- on 12/28/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import EarlGrey


class ButtonsPageTest: UICatalogTest {
  var buttonView: ButtonsPage = ButtonsPage()

  func testPageObjects() {
    buttonView.assertPageObjects()
    buttonView.pressSystemTextButton()
  }
}
