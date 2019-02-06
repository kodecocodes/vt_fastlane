# Course Metadata
Provide a description and the final title for the course. These descriptions must be **between 100 and 160 characters long**.

### Course Title: 
fastlane for iOS

### Course Description:
In this course, you'll learn to use fastlane to automate core iOS workflows and avoid common Developer Portal and App Store Connect problems.

### Difficulty Level:
Intermediate

### Prereqs - To be added as Author's Notes to first video
Basic familiarity with Xcode and the App Store ecosystem.

### Where to go next - To be added as Author's Notes to last video
* [Todo: Add any recommendations for courses, books, etc. to check out after your course]

### Language, Editor and Platform versions used in this course:

* **Language:** Swift 4.2 / Ruby  
* **Platform:** iOS 12
* **Editor**: Xcode 10

### Credits
* **Instructor:** Brian Schick
* **Tech Editor:** Tim Mitra

-----

# Video Metadata



List out each part of the course and each video within that part. For each video, provide a description that is **between 100 and 160 characters long**. Some examples are below.

If a video uses a different language, platform, or editor than is used in the rest of the course, specify in brackets at the end of the description.

The first video in each course is automatically free to non-subscribers. Choose one other video that you think might entice people to subscribe and watch the entire course, and mark it with [FREE] at the end of the description.

## Part 1: Getting Started

1. *Introduction*: Let's preview what you'll be learning in this course, and why it's important. [FREE]
2. *Challenge: Store Tasks*: See how deeply we rely on the Developer Portal and App Store Connect, and where common pain points are. [FREE]
3. *About Fastlane*: Learn how `fastlane's` powerful automation tools can help you streamline your iOS workflows, and review the tools you'll need for this course.
4. *Installing Fastlane*: Install `fastlane` and its dependencies, then add it to our course's sample project. 
5. *Registration*: Learn about `fastlane` actions, and how the `produce` action can automatically register your app with App Store Connect.
6. *Challenge: Using Produce*: Learn about `fastlane` lanes, then practice creating your own lane to register your app with `produce`. 
7. *Certificate Management*: Review the importance of certificates, and then learn how `fastlane's` `cert` action fully automates all aspects of getting and managing certificates for you.
8. *Provisioning*: Review the role of provisioning profiles, then see how `fastlane` `sigh` can automate and streamline managing these.
9. *Challenge: Creating Custom Lanes*: Practice creating a new lane with `cert` and `sigh`, then practice setting up a project configuration `Fastfile`.
10.*Conclusion*: Let's review the `fastlane` basics you've just learned in this section, and see what's next.

## Part 2: Team Development

1. *Introduction*: Let's preview what you'll be learning in this part of the course, and why it's important.
2. *Team Code Signing*: Discover `fastlane's` revolutionary approach to deeply simplify code signing with a single shared set of team assets.
3. *Match*: Meet `match`, the `fastlane` action that makes it possible to use team-based code signing, then initialize `match` for our sample project.
4. *Challenge: Using Match*: Practice creating a team code-signing lane with `match`, then customize app settings and automatically register your iOS devices.
5. *Lane Tips*: Learn how to switch between your custom lanes, and how to control lane flow, work with variables, pass and use parameters, and more.
6. *Environment and Settings*: Discover when it's best to use fastlane actions directly in the command line, within your own custom lanes, how to efficiently store project-wide settings, and how to document your own lanes. 
7. *Challenge: Lane Update*: Practice adding more powerful lanes, updating your existing lanes with more powerful features, and consolidating project settings.
8. *Conclusion*: Let's sum up what you learned in this section, and get a look at what's next.

## Part 3: Test Builds and Distribution

1. *Introduction*: Let's see what you'll be learning in this part of the course, and why it's important.
2. *Build and Packaging*: Learn the basics of how `fastlane` `gym` can automate building and packaging your app for testing.
3. *Challenge: Using Gym*: Practice building new lanes that use `gym` to build our app for TestFlight and third party testing services, then improve these lanes using encapsulation and parameters.
4. *Pilot*: Learn how to use `fastlane` `pilot` to automatically upload and submit test builds directly to TestFlight and manage testers.
5. *Other Test Options*: See how to use custom `fastlane` actions to upload and submit test builds to common test distribution services like Crashlytics, Hockey, or Tryouts.
6. *Challenge: Distribution*: Practice creating lanes to build and distribute your app to TestFlight, and then repeat this with a 3rd party test service of your choice.
7. *Conclusion*: Let's review what you learned in this section, and take a peek at what's next.

## Part 4: App Submission and Approval

1. *Introduction*: Let's see what you'll be learning in this part of the course, and why it's important.
2. *Metadata*: Learn the importance of app metadata, and see how `fastlane` `precheck` can automatically catch common causes for rejection before you submit your app.
3. *Challenge: Using Precheck*: Practice using `precheck` in a new lane and then add more power with checks for custom words.
4. *Screenshots*: Review the major challenges with manually created screenshots, then see the technical challenges to automating screenshot creation and how fastlane overcame them with its `snapshot` action.
5. *Snapshot*: Learn how to use `snapshot` to automatically create a complete set of screenshots for an app's target views, devices, and languages with just one command.
6. *Challenge: Adding Snapshot*: Practice setting up snapshot and using it into your lanes, then further customize the devices and languages it uses.
7. *Frames*: Learn to further enhance automatically generated screenshots by adding custom frames, backgrounds, captions, and colors with `fastlane` `frameit`.
8. *Deliver*: Discover how to upload and submit your app, it's screenshots and metadata, and more using `fastlane` `deliver`.
9. *Challenge: App Submission*: Practice completing your delivery lanes by adding snaptshot, frameit, and deliver to your custom lanes, and then extend this with language-specific customizations.
10. *Conclusion*: Let's review what you learned in this section, and discuss what's next.

## Part 5: Advanced

1. *Introduction*: Let's review how you can extend fastlane to automate tasks beyond the App Store, and why this is important.
2. *Git Integration*: Learn to integrate git directly into your core fastlane build workflows, and how to automate every part of this with `fastlane's` suite of git actions.
3. *Unit Tests*: See how you can automatically run project unit tests directly from your lane — and only proceed if they pass — with `fastlane` `scan`.
4. *Linting*: Learn to integrate and configure Swift and Objective-C linting into your project workflow, using SwiftLint and `fastlane's` `lint` action.
5. *Documentation*: See how to automatically create up-to-date documentation for your project with Realm Jazzy and the fastlane `jazzy` action.
6. *Slack*: Discover how to easily add powerful custom team notifications to your with a Slack account and `fastlane's` `slack` action.
7. *Plugins*: Discover the several ways to find and use third party fastlane plugins and extended actions, and how to create your own.
8. *Best Practices*: Review the best practices we've learned, focusing on how best to abstract and organize lanes for efficiency and clarity, and the use special-purpose meta lanes. 
9. *Conclusions*: Let's wrap up what we've learned about fastlane, and where you can go from here.