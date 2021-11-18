//
//  Theory.swift
//  iOSAssessment-16
//
//  Created by Gaurav Bisht on 25/10/21.
//

import Foundation
//Q1 : Use cases of different types of XCAsserts.
//// Done in the practical implementation
//
//Q2 :  What is the Host application for the Unit test cases target?
//Sol :  Host application is the application on which we test our unit-test targets. Unit testing is a software development process in which the smallest testable parts of an application, called units, are individually and independently scrutinized for proper operation. This testing methodology is done during the development process by the software developers and sometimes QA staff.
//
//Q3 : Explain the life cycle of XCTestCase class.
//Sol : XCTestCase has many methods as part of its lifecycle. It has a class setup method that executes only once before the execution of the first test. In this method, we can setup the initial state of all test methods. XCTestCase also offers the class teardown method, called after all tests have been executed to provide an opportunity for clean-up. Similar to class setup and class teardown, we have the setup and teardown methods that called accordingly on the beginning and the end of each test method.

/*
Override the setUp() class method to set up initial state for all test methods.

Override the setUpWithError() instance method to set initial state and handle associated errors before each test method is run.

Override the setUp() instance method to set initial state before each test method is run.

Register self-contained blocks of teardown code with the addTeardownBlock(_:) method during a test method's execution.

Override the tearDown() instance method to perform cleanup after each test method completes.

Override the tearDownWithError() instance method to perform cleanup and handle associated errors after each test method completes.

Override the tearDown() class method to perform final cleanup after all test methods complete.
*/

