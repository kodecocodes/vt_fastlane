# Intro
**[Slide 1]** Animates to support text
As we develop iOS apps, it's natural to think of them in terms of code, UI/UX, and other mostly developer-centric terms.
But apps don’t live in isolation, and as soon as we want to move beyond developing in isolation, we need to share, distribute, test, publish, or update our apps, and we find ourselves needing to interact deeply with the iTunes Connect and the Apple App Store. Basically, the moment you want your app to step beyond the bubble of your personal development environment, you find yourself facing the edifice of iTunes Connect, the Apple App Store, and the vast ecosystem built around these tools. 
**[Slide 2]**
A quick aside… throughout this course, when I'm talking generally about the  iTunes Connect, App Store Connect, the Apple App Store, and the other parts of Apple's vast App Ecosystem, I’ll often shorten that mouthful to the simpler terms like “The App Store Ecosystem”. I'll only do this when the specific part of this ecosystem isn't important to focus on, of course. If I’m referring to a specific component of this ecosystem, I’ll call out the specific element I'm referring to.
# Introducing the Challenge
Let’s dive into your first challenge:
**[Slide 3]**
To Apple's credit, it's often as easy to overlook how much our apps depend on iTunes Connect and the App Store. At it's best, it's as easy to forget a lot of the ways we integrate with the App Store Ecosystem as it is to overlook the air we breathe.
But in this course, we want to be very aware of how we depend on and interact with the App Store Ecosystem, especially because fastlane is designed expressly to make all these interactions much, much better for us. Said a bit differently, to appreciate what fastlane can really do for you, you need a clear understanding of what it's designed to fix.
**[Challenge Slide]**
So, your first challenge is nice and simple. In a moment, I’ll ask you to pause the video and to make a list of all the ways you interact with the App Store ecosystem over the lifetime of your apps. There are some obvious things here I’m sure you’ll catch, but there are also a surprising number of subtler elements you might not think of at first. 
Go ahead and pause the video now and draw up your list. When you’re done, resume the video and we’ll compare lists. See you then…
# Pause for Challenge
# Challenge “Answers”
> NOTE for TE: I’ll be returning to this list and the accompanying slides as I build the course. I'll have either separate slides or bullet points to accompany each of these. For starters, can you please just review the basic style and concept here as much as makes sense? Thanks! — Brian
Welcome back. Let’s take a look at how our lists compare…
- Let’s start with the most obvious one: We all submit our apps to Apple for testing and approval, and you likely know firsthand that manually handling these steps can be surprisingly time-consuming, and maybe a wee bit painful at times.
That’s it — nice and simple. This’ll be a real short course! I’m kidding of course. There’s much more here. Let’s move onto the less obvious things that require interaction with the App Store infrastructure:
- To get out of the gate with iOS development, we get an Apple Developer ID. This ID becomes a cornerstone of everything we do in concert with the App Store ecosystem.
- When we first create an iOS project, Xcode gets a **Provisioning profile** on our behalf. This is used throughout the lifetime of an app to ensure that this app is from a known source, and that it hasn’t been modified by bad guys. 
- iOS apps aren’t (usually) developed in isolation, and each member of a development team needs valid certificates, and each of these must be linked to an app. Seasoned developers likely know how much annoyance and pain managing all the combinations of team members and devices can cause
- We can enable our apps to use any number of services, such as push notifications and FINISH THIS. Once again, we register our app for these and obtain needed certificates from the App Store ecosystem.
- We enroll testers, and enable and distribute builds of our apps to them. Once again, the App Store ecosystem is at the heart of this.
- We manually create and then submit oodles of screenshots of enough shapes and sizes to make Dr. Seuss squeal with delight. This can be a real pain point, as App Store requirements change, new device sizes are released, and as we release new iterations of our app. If this has ever bitten you, there’s very good news ahead.
There’s still quite a bit more we could call out, but that’s plenty for now. Hopefully by now it’s clear that we all spend a surprising amount of our lives interacting in many ways with Apple’s vast App Store infrastructure. Apple has worked to make manual interactions for these steps as palatable as possible. But here’s no getting around the fact that manually managing all these steps can take up an awful lot of time and attention — time and attention that could be much better spent on real work.
The great news is that fastlane was developed to ease exactly these points of pain. As you’ll soon see, each of fastlane’s tools fits a set of these tasks like a glove, and taken together, fastlane offers an ideal solution for deeply automating — and profoundly streamlining and goof-proofing — your entire relationship to the App Store ecosystem.
# Up Next
in the next section, we’ll begin our dive into fastlane by installing it on your mac. See you there…