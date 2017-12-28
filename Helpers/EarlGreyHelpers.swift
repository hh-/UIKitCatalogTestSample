//
//  EarlGreyHelpers.swift
//  UIKitCatalogTests_unitTests
//
//  Created by Heath Hales on 12/28/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import XCTest
import EarlGrey

public class EarlGreyHelpers: XCTestCase {
    
    func selectByID(_ ID:String) -> GREYElementInteraction {
        return EarlGrey.select(elementWithMatcher: grey_accessibilityID(ID))
    }

    func selectByText(_ text:String) -> GREYElementInteraction {
        return EarlGrey.select(elementWithMatcher: grey_text(text))
    }

    func assertVisible(_ ID:String) {
        selectByID(ID).assert(grey_sufficientlyVisible())
    }

    func assertTextVisible(_ text:String) {
        selectByText(text).assert(grey_sufficientlyVisible())
    }

    func returnToFrontTableView() {
        EarlGrey.select(elementWithMatcher: grey_buttonTitle("UIKitCatalog")).perform(grey_tap())
    }
}
