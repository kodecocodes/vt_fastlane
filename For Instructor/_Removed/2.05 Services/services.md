# Introduction
In this episode, we'll begin exploring a final aspect of the iOS app development workflow: Adding app capabilities.
# Lecture
## About Capabilities
As you develop your iOS apps, you'll often enable one or more extended app capabilities. Perhaps you'll want to integrate CloudKit or Health Kit or take advantage of Maps and Locations.
**[Slide ]** iOS Capabilities
Each of Apple's native platforms offers a range of capabilities. These vary by each platform, but for example, here's the capabilities Apple currently offers for iOS. (points to slide) 
Xcode makes it easy to enable these. Simply choose the `Capabilities` tab, toggle on the desired capabilities, and if needed, take the additional steps indicated to complete the process.
Behind the scenes, each enabled capability is registered in the project's `Entitlements.plist` file and any needed frameworks are added to the Xcode project. Each capability is also registered on the Apple Developer Portal. And the capability will be added to the entitlements section of related provisioning files.
<!-- make sure above ¶ is complete and accurate -->
**[Slide ]** Using Xcode 
So long as you follow Apple's recommendation to use automatic signing, Xcode does a nice job handling all the moving parts and enabling new capabilities. However, things don't always stay so neat.  Xcode doesn't always correctly update Developer Portal settings, and implicitly managed assets can and do develop problems. 
**[Slide ]** Out of sync Xcode and Dev Portal capabilities
As one example, if I enable a few capabilities in Xcode and then disable them, they remain enabled on the Developer portal And when this happens, our developer lives can suddenly get… interesting.
# Demo
## Produce
## Command Line
Fastlane's `produce` action offers a way to automate registration of your app's capabilities (fastlane documentation refers to these as "Application Services"). 
You met `produce` early in this course, where you used it to register our sample app on the Developer Portal. As you saw then, running `fastlane produce` in the command line quickly register a new app in the Developer Portal.
Beyond this base functionality, `produce` also contains robust tools for managing app capabilities. You can enable app capabilities as simply as saying:
```bash
fastlane produce enable_services --homekit --healthkit
```
and disabling these is just as simple:
```bash
fastlane produce disable_services --icloud
```
To get a complete list of available services, run:
```bash
fastlane produce enable_services --help
```
There's also support for services needing additional setup. For example, you can create an app group for sharing assets between multiple apps with:
```bash
fastlane produce group -g group.ChewchewTrain -n "ChewChews"
```
You can then associate the current app with an App Group with:
```bash
fastlane produce associate_group -a group.com.razeware.testGroup
```
Similar sets of commands make it easy to create and associate your app with iCloud Containers, and again, with Apple Pay Merchant Identifiers. All these commands accept multiple identifiers as well.
# Lecture
## Lanes
You're already using produce's basic functionality in your `register_app` lane. 
```ruby
lane :register_app do
  produce(
    username: "bschick1@mac.com",
    app_identifier: "com.razeware.ChewChewTrain",
    app_name: "Chew Chew Train",
    team_name: "Brian Schick",
    itc_team_name: "Brian Schick"
  )
end
```

```ruby
  lane :toggle do
    produce(
      team_name: "Brian Schick",
      itc_team_name: "Brian Schick",
      enable_services: {
        app_group: "on",
        apple_pay: "on",
        associated_domains: "on",
        data_protection: "complete",
        game_center: "on",
        health_kit: "on",
        home_kit: "on",
        hotspot: "on",
        icloud: "cloudkit",
        in_app_purchase: "on",
        inter_app_audio: "on",
        passbook: "on",
        multipath: "on",
        network_extension: "on",
        nfc_tag_reading: "on",
        personal_vpn: "on",
        passbook: "on",
        push_notification: "on",
        siri_kit: "on",
        vpn_configuration: "on",
        wallet: "on",
        wireless_accessory: "on",
      }
    )
  end
```
<!-- 

2019-01-08

This doesn't at all do what the documentation says it does. Basically nothing at all happens when run in lanes. 

I'll send this in my upcoming list of questions for the fastlane team. 

I'm starting to think the course will be cleaner if we omit coverage of services registration, as it's much less compelling than fastlane's other stuff. 

If we do this, I'd add an dedicated lanes chapter in its place and shorten this section to 6 total episodes.
 -->
