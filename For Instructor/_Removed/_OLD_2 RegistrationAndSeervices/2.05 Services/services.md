# Introduction
You've mastered the basics of registering your app and managing its development code signing assets. In this episode, we'll explore a final aspect of the development workflow that's also deeply intertwined with the App Store ecosystem: Adding app capabilities.
# Lecture
## About Capabilities
As you develop your iOS apps, you may find yourself wanting to opt in to one or more extended capabilities that Apple offers. For example, you might want to interact with Apple's CloudKit, integrate Health Kit or take advantage of Maps and Locations.  
**[Slide ]** iOS Capabilities
Apple offers a wide array of extended capabilities (you'll often hear these called "services", particularly in fastlane documentation; both terms mean the same thing). 
Each of Apple's four native platforms has access to a subset of services. As you can see for iOS, Apple provides a rich selection for a wide array of potential uses. 
You can think of each capability as a *channel* that you must opt in to in order to use in your app. Some of these — like CloudKit or Push Notifications — are clearly web-based, while others like Background Modes or Inter-app Audio feel more device-centric. 
But the key point to keep clear on is that just like your app itself, each capability requires that you obtain valid certificates, provisioning profiles, and an entitlement. You can think of this as being largely parallel to the process of provisioning your app itself.
**[Slide ]** Using Xcode 
You're likely used to enabling and managing services via Xcode's `Capabilities` tab. Managing your app's services and profiles via Xcode is generally straightforward, and the `Capabilities` tab provides a clean dashboard-like UI letting you toggle services on and off, also giving you a reasonably helpful checklist of tasks performed under the hood to enable each capability you select. 
So long as you follow Apple's recommendation to use automatic signing, Xcode automatically obtains the needed signing assets to enable the capability on your behalf. You can see this happen in real time when you enable a capability in Xcode. 
<!-- 

2018.12.28

The remainder of this section is on hold pending feeddback from Felix Kruase about apparent misses and inconsistencies in both Xcode's and produce's handling of capabilities/services.

 -->
