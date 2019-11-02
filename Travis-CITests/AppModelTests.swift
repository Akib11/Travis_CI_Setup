//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Akib Quraishi on 02/11/2019.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest
import Travis_CI

class AppModelTests: XCTestCase {
  
  var sut: AppModel!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      sut = AppModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      sut = nil
      super.tearDown()
    }

  func testAppModel_whenInitialized_isInNotStartedState() {
    
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    // 1 given app in not started
   
    // 2 when started
    sut.start()
    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }

}
