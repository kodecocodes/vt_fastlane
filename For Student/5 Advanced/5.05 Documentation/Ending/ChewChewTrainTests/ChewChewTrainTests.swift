/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import XCTest
@testable import ChewChewTrain

class ChewChewTrainTests: XCTestCase {

  override func setUp() {
  }

  func testTrainingModelNotNil() {
    let assertion = "Training Model Challenges should not be nil"
    let trainingModel = TrainingModel()
    XCTAssertNotNil(trainingModel.challenges, assertion)
  }

  func testTrainingModelHIsNotEmpty() {
    let assertion = "Training Model Challenges should contain at least 5 elements"
    let trainingModel = TrainingModel()
    XCTAssertGreaterThanOrEqual(trainingModel.challenges.count, 5, assertion)
  }

  func testAction_0() {
    let assertion = "Action 0 Should be 'Sit'"
    let action = TrainingModel().challenges[0].action
    XCTAssertEqual(action.lowercased(), "sit", assertion)
  }

  func testAction_1() {
    let assertion = "Action 1 Should be 'Stay'"
    let action = TrainingModel().challenges[1].action
    XCTAssertEqual(action.lowercased(), "stay", assertion)
  }

  func testAction_2() {
    let assertion = "Action 2 Should be 'Heel'"
    let action = TrainingModel().challenges[2].action
    XCTAssertEqual(action.lowercased(), "heel", assertion)
  }

  func testAction_3() {
    let assertion = "Action 3 Should be 'Bark'"
    let action = TrainingModel().challenges[3].action
    XCTAssertEqual(action.lowercased(), "bark", assertion)
  }

  func testChallengeContainsExpectedElements() {
    let assertion = "Each Training Model Challenge should be populated"
    for challenge in TrainingModel().challenges {
      XCTAssertGreaterThan(challenge.action.count, 0, assertion)

      // This will intentionally fail.
      XCTAssertGreaterThan(challenge.hint.count, 0, assertion)
    }
  }
}
