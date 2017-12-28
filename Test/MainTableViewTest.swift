//
//  MainTableViewTest.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import EarlGrey

class MainTableViewTest: UICatalogTest {

  var mainTableView: MainTableViewPage = MainTableViewPage()

  func mainTableViewPage() {
    mainTableView.testPageObjects()
//    mainTableView.testScrollUp()
    mainTableView.testScrollDown()
  }
}

