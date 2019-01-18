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

import Foundation

struct Challenge {
	let action: String
	let hint: String
}

struct TrainingModel {
	let challenges: [Challenge] = [
		Challenge(action: "Sit",       hint: "Take a seat yourself. This will encourage your dog."),
		Challenge(action: "Stay",      hint: "Try running around in circles, while motioning for your dog to do the opposite."),
		Challenge(action: "Heel",      hint: "Consider removing your shoe and pointing to the heel. This may help visually-oriented dogs."),
		Challenge(action: "Bark",      hint: "If you're in a public area, start barking loudly. This is a good way to make new acquantences."),
		Challenge(action: "Speak",     hint: "If you know a foreign (or computer) language, try speaking softly to your dog in this language."),
		Challenge(action: "Yodel",     hint: "If you don't yodel professional, consider taking lessons. It will change you and your dog."),
		Challenge(action: "Roll Over", hint: "Try watching Young Frankenstein with your dog, who will love the \"Roll, roll… rool in the hay\" scene."),
		Challenge(action: "Chill",     hint: "Think super Zen thoughts and do nothing. You'll thank your dog for this one."),
		Challenge(action: "Beg",       hint: "Make the most pathetic face you can. Your dog may feel sorry for you and do this trick to make you feel better."),
		Challenge(action: "Be Quiet",  hint: "Donning a classic Mime outfit often yields surprising results."),
		Challenge(action: "Jump",      hint: "Leading by example here works great. Try jumping repeatedly until your calves feel like they'll break."),
	]
}
