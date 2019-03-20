/// Copyright (c) 2018 Razeware LLC
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

import UIKit

class TrainingViewController: UIViewController {

	var challenges: [Challenge]! = nil
	var challengeIndex: Int = 0
	var treatsEarned = -1

	// MARK: - IB Outlets

	@IBOutlet weak var challengeLabel: UILabel!
	@IBOutlet weak var challengeHint: UILabel!
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var treatCountLabel: UILabel!
	@IBOutlet weak var treatTimeStackView: UIStackView!
	@IBOutlet weak var resultStackView: UIStackView!

	// MARK: - IB Actions

	@IBAction func nextButtonTapped(_ sender: UIButton) {
		presentQuestion()
	}

	@IBAction func yesButtonTapped(_ sender: UIButton) {
		handleResponse()
	}
	@IBAction func humanYesButtonTapped(_ sender: UIButton) {
		handleResponse()
	}
	@IBAction func noButtonTapped(_ sender: UIButton) {
		handleResponse()
	}

	// MARK: - View Lifecycle

	override func viewDidLoad() {
		let model = TrainingModel()
		challenges = model.challenges
		challengeIndex = challenges.count - 1

		presentQuestion()
	}

	// MARK: - Class Methods

  ///Present next Challenge and Update data and UI
	func presentQuestion() {
		challengeIndex = (challengeIndex + 1) % challenges.count
		challengeLabel.text = challenges[challengeIndex].action
		challengeHint.text = challenges[challengeIndex].hint

		questionLabel.text = "Did your dog \(challenges[challengeIndex].action.lowercased())?"

		treatsEarned += 1
		treatCountLabel.text = treatsEarned == 0 ? "" : "\(treatsEarned) Tasty Treats Enjoyed!"

		// TODO : animate
		treatTimeStackView.isHidden = true
		resultStackView.isHidden = false
	}

  ///Respond to UI challenge button taps
	func handleResponse() {

		// TODO : animate
		treatTimeStackView.isHidden = false
		resultStackView.isHidden = true

	}
}
