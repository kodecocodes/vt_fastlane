# Intro
Now that you've installed fastlane, it's time to take our first steps with it. We'll begin by seeing how fastlane can help you take control of*certificates.*
# Understanding Certificates
## Lecture: Basics
Developing apps for any modern Apple platform — including iOS — has a distinct flavor. One especially important aspect of all Apple platform development is that to build apps for any of them, you must agree to step inside a complex and rigorously defended Circle of Trust.. 
Over the next several episodes we'll review the key components of this, starting here with Certificates.
**[Slide 1]** Certificate as ID
![][image-1]
As we'll see, Certificates play an essential role throughout iOS development. They're used for many different purposes. At their most basic, however, Certificates function as a form of verifiable digital ID, much like a physical passport or license. Just like a physical form of ID, a Certificate can be presented on challenge to validate your identity, that you're the actual developer of your apps (which are code signed using your certificate), and ultimately, that your apps are delivered for testing and distribution untampered with by anyone else. \* **[Slide 2]** Schematic of Public/Private
An iOS developer certificate closely resembles an SSL certificate used for https web traffic or an RSA key. To obtain a certificate, you must request it from a valid issuing Authority (Apple goes to considerable lengths to do this on your behalf, and Xcode handles the request and handling of development certificates for you automatically when you join the Apple Developer Program). 
Each iOS Development Certificate contains a pair of Assymetrical Keys, consisting of a publicly shareable key and a private key that you guard carefully. As with RSA keys you might be familiar with from Git and other web resources, the important thing is that the private key cannot be reverse engineered from the public key. *This often unheralded feat of modern cryptography is often ……………*
**[Slide 3]** 
Let's take a closer look at what happens under the hood when you request a Certificate (or when Xcode does this automatically on your behalf):
\*<!-- Complete this list -->

<!-- Rework above

- Steeping into Circle of Trust. Apple doees this for you.
- Unpack the Request and issuance process.
- The specifics of the Certificates, plus Development, Distribution, more later
- Show physically in Keychain Access
- Common manual actions: Verify, intermediate, replacing invalid/missing, exporting/importing

Possibly install and demo ProvisionQL here to better demonstrate Certificates
 -->
# Demo: Meet cert
<!-- Start at fastlane's actions then go to cert -->
It's time to meet the first of fastlane's tools you'll be using, and it's called **cert**. Cert's is one of fastlane's many **actions**. Like all actions, cert can be run a la carte in the command line, and that's what we'll do here as we're getting started. As you'll see over the next few episodes, what we do here will just expose the tip of the iceberg; the real power of fastlane's actions comes when you bundle them together to combine their power. You'll be doing that soon…
Fastlane's document of cert shows us the basic form of command line usage, along with some of its options. It also points us to how to get more live information within the command line about further things we can do with it. 
Alright, let's fire it up! 
Open your Terminal app, and navigate to your sample project's directory.  Execute 
`fastlane cert`
Whoa! A whole lot just happened, and… fast. Let's unpack this. To get a better look at what's happening, let's run
`fastlane cert --verbose`
<!-- Self: Improve the following, matching to verbose output and ensuring these are in the right order and complete -->
First, cert gets your Apple ID and password, prompting you for them if it doesn't yet have them.
It then logged onto the Apple Developer portal to verify these. 
Next, it looked for a valid development certificate on your mac. If it didn't find one, it created a new request and retrieved and stored the new public/private pair in your keychain, also verifying that the certificate was correctly installed locally.
Finally, it installed that certificate for your current project.
Whew! That's a lot, and it's almost scary how much fastlane cert does for us on our behalf -- and how much faster that is than if you'd manually had to create a request, retrieve your certificate pair, install these, validate them, and add this to your Xcode project. Again, cert isn't something you'll spend a lot of time with directly in this course, but I hope you can already get a sense of how much fastlane can do for you -- and how much time even simple actions like cert can save you.
Like most fastlane actions, cert can also be further customized if you don't want its default behavior.  Some options are shown when you enter: 
`fastlane cert help`
We'll explore these types of options in more detail in later episodes. For now, let's take a look at a couple options. As mentioned earlier, certificates have a limited shelf life by design, meaning that they expire. To manually find and remove any expired certificates in my keychain, run:
`fastlane cert revoke_expired`
In my case, I get a thumbs up telling me I don't have any expired certs in my keychain at this time. If I want more info, I can always use the --verbose option.
You can also see more about all the options available to you via 
`fastlane action cert`
Again, cert is a relatively humble action in the fastlane scheme of things. But even here, this list gives a nice sense of the kinds of customization possible. Among other things, you could choose to download different types of certificates for different Apple platforms as desired. You can force a download of a fresh certificate even if there's a valid one already in your Keychain. And there are several options for handling custom paths and locations for your assets.
# Summary
That wraps up this episode. We've dipped our toes just a little into the fastlane ocean. I hope you can already sense that fastlane's waters run quite deep, and that it can become an incredibly valuable tool in your iOS development tool belt.
In the next episode, we'll meet a second fastlane tool and learn how it can help tame the wild jungle of  iOS Provisioning Profiles. See you there!


<!--  Introduce Code Signing as a concept here too? That'd also mean introducing the Bundle ID --> 

[image-1]:	https://developer.apple.com/library/archive/documentation/Security/Conceptual/cryptoservices/Art/certificate_anatomy_2x.png