# Intro
In this episode, you'll meet a second fastlane tool — **sigh** . In the same way that cert, which you met in the last episode, is designed to ease managing certificates, sigh is aimed at helping you create and manage provisioning profiles. Let's dive right in…
# Lecture
In the previous episode, we took a look at the role of certificates in the App Store ecosystem, and you saw that certificates act essentially as verifiable ID's of a developer's identity. 
## Identifying App State
**[Slide ]** The Bundle Identifier
A second piece of the larger security picture is the Bundle ID. Much as a Certificate assures that you're really you (and that an impostor can't successfully pose as you), the Bundle ID provides a unique identifier for each App. You create these in Xcode when you first create a new project. Apple verifies that this bundle identifier is indeed unique, and from then on, it's used to uniquely identify your application. 
<!-- Add Code signing here => Uniquely identify app state-->
## Identifying Devices
**[Slide ]** UDID Example
Similarly, every iOS device contains a hard-wired UDID, or "Unique Device identifier". This is a 40 character hexadecimal string that uniquely identifies a given piece of iOS hardware. Once again, this makes it possible to identify any individual iOS devices out of the billion plus real world devices Apple has sold. 
**[Slide ]** Bundles, Devices and Devs with Question mark
Putting all this together so far, we can see that within the Apple Security Ecosystem, each iOS app developer, each app, and every device can all be uniquely identified. Together, these three pieces of data go a long way towards creating a complete security infrastructure. But there's still a piece missing.
## The Role of Profiles
**[Slide ]** Puzzle piece
The missing puzzle piece is the **Provisioning Profile**. This brings all these things together to complete the total scheme. It's also quite possibly the most misunderstood piece of the overall security scheme for iOS developers. The good news is that there's nothing here to be afraid of.
**[Slide ]** Provisioning File elements
 A provisioning profile is a physical file (with a .ipa extension). There are multiple types of these, which we'll discuss in a moment. Here's what a development profile contains:
- the app's Bundle ID (uniquely identifying a single app)
- the app's Signing Certificate (uniquely identifying the app's code-signed state)
- a list of authorized Entitlements (we'll introduce these later)
- a list of authorized Device ID's
- a Distribution Certificate public key
**[Slide ]**  License or handshake image
You can think of this as providing a "license" to install a single app that's in a known code-signed state to be run by one or more authorized developers on one or more authorized iOS devices.  
## Types of Profiles
 Like Certificates, Profiles come in different flavors — 4 to be exact. 
### Development Team
**[Slide ]** Development Profiles
The first profile type is a "Development Team Profile". This is the bread and butter of basic team development and testing. It enables team members to share projects being developed. And whenever a team member loads an app on one of their iOS devices, Xcode automatically pushes the needed Development Team profile to that device.  Essentially, the development profile provides a safe way to share and install apps not yet under the full umbrella of the App Store.
Because this is such a common use case, if you allow Xcode to automatically manage signing for a project, it also automatically creates and manages a Development Provisioning Profile on your behalf. It does this well enough that it's easy to forget that without a valid Development Provisioning Profile, you could never push your in-development apps anywhere other than a simulator.
The main thing to remember about Development Team Profiles is that they carry a complete list of every authorized iOS device for testing. If a device isn't in this list, the in-development app can't be installed or tested on it, period.
### Ad Hoc
**[Slide ]** Ad Hoc Profiles
Second is the Ad Hoc Provisioning Profile. Ad Hoc Profiles provide a way to distribute an app to a known, finite set of iOS devices outside the App Store. For this reason, it resembles a Development Team Profile in that it once again contains a complete list of all devices the app may be installed on. If you distribute an app to testers via something like HockeyApp, Ad Hoc profiles are what make this possible.
### Enterprise
**[Slide ]** Enterprise Profiles
Third is the Enterprise Provisioning Profile. These provide a way for larger enterprises to distribute in-house applications to enterprise-approved devices.
### App Store
**[Slide ]** App Store Profiles
Finally, we come to the other Profile that's important to us: The App Store Provisioning Profile.
The App Store Profile comes into play when you publish your app to the Apple App Store. Obviously, at this point you can't possibly know the UDID's of every device your app will be authorized to run on. In fact, you want every device in the world to install your app, right? 
Remembering that Apple's overarching concern is to ensure that no unknown, impostor, or altered apps can ever get onto any (non jail-broken) iOS device, something else is needed here to once again close the loop. In this case, Apple itself takes over, resigning your app with its own signing certificate and issuing a matching Provisioning Profile. From here, App Store provisioning is used to ensure that your in-Store app is delivered in pristine, untampered state to each user who downloads or purchases your app.
## Wrapping up
OK. We've covered a lot once again, but hopefully the often-confusing pieces of the big picture of this security puzzle are getting clearer. 
# Demo: Introducing **sigh**
"Sigh" is likely the (suitable for work version of the) sound iOS developers have historically made when facing the task of having to debug and manage all the combinations of Developer Certificates, Device ID's and other details of provisioning profiles. Appropriately, it's also the name of the fastlane action designed to make this frustration a thing of the past. 
Before we dive into Terminal, let's take a moment to review sigh's summary of why it makes sense to let it manage your provisioning profiles rather than having Xcode do it. We'll return to these points soon.
Running sigh is so simple, it almost seems impossible. Simply navigate to your project's root directory and execute
`fastlane sigh`
…and sigh will analyze and report back on the state of your current project. This is deceptively simple. With this one command, sigh logs onto the Developer portal and gets the App ID matching your project's App ID (alerting you if it doesn't find one) and ……………
Fastlane actions are consistent, so as you saw in the previous episode with cert, you can learn how to tune what sigh does via
`fastlane action sigh`
… and as you can see, if you'd like to create any one of the four specific types of provisioning profiles we've reviewed, you can do that, and much more. Also as you saw with cert you can get more information by running
`fastland sigh --help`
This provides some particularly helpful options. I'd like to see all my profiles, so I'll type
`fastland sigh manage`
Et voila! I get a very handy listing of all my valid, expired, and soon-to-expire profiles. If I want to repair profiles, I can say
`fastlane sigh repair`
… and much more.
# Summary
OK. Let's wrap up. In the past two episodes, you've met cert and sigh, and have gotten a small taste of how fastlane can automate and manage handling your Certificates and Profiles for you. 
But, if you had to do this by entering rote commands into your Terminal as we've done so far, that probably wouldn't be much better than what you've been doing up til now. In the next episode, you'll create your first fastlane "lane", which will give you a taste of how fastlane actions can be combined to perform complex actions on your behalf with just a single custom command. See you there…