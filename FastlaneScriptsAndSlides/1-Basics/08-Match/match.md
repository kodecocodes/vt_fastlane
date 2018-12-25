# Intro
In this episode, we'll meet **match**, the fastlane action for managing team-based certificates and profiles.
# Lecture
## Introducing Match
**[Slide ]** Match documentation
Like other fastlane actions, match has a dedicated documentation page at **docs.fastlane.tools/actions/match**.
**[Slide ]** Match points :]
**match** is designed to handle all the heavy lifting of creating, encrypting, and securely storing a team's certificates and profiles in a single git repository, and then again to retrieve, decrypt, and utilize these on individual developer's machines. It also provides many advanced tools for clearing clutter, easily adding new team devices, supporting apps with multiple targets as well as multiple Apple accounts and teams. A good measure of its ambition is its pledge that a team can set up code signing on a new machine in under a minute!
That's a tall order. Let's give match a spin and see how it, well, matches up to its goals…
## Setting up a Private Git Repository
Before using match, we  need a **private** git repository dedicated solely to storing certificates. Again, I'll emphasize: This must be **private* — or life as we know it will end. 
At the time of this writing, **GitHub** doesn't offer private repositories for free accounts, but other well-regarded git resources like **GitLab** (gitlab.com) and **BitBucket** (bitbucket.org) do.  I'll use a create a private repository named **team-certificates** that I created earlier gitlab here.
**[Slide ]** Optional Dev Account
Fastlane suggests you might want to add a new Apple Developer Portal account and dedicate this to match team assets. This dedicated account — perhaps named something like **team@myorg.com** — avoids mixing personal and team-based assets in the same bucket. I'd recommend this as a best practice.
# Demo
## Initializing Match
With our setup done, we can try out match in the command line. I'll begin by navigating to our project folder and runing:
```bash
fastlane match init
```
I'm prompted to enter the URL of my private git repo and the process completes with a helpful summary.
This creates a new **Matchfile** containing match's configuration settings. It's initially populated with our repo's URL,  and its default type is set to development and can be further customized.
## Removing the Clutter
Now let's put match to use. If you're reusing an existing account, you should start by cleaning out your preexisting certificates and profiles:
```bash
fastlane match nuke development
```
I can also replace `development` with `distribution` or `enterprise` to clear out any lingering assets of these types
## Creating Team Dev Certs and Profiles
Now I'll create a new set of development assets, encrypt them, and upload them to our git repo. All this takes is:
```bash
fastlane match development
```
Match prompts me to input my app bundle identifier, then a passphrase for encryption. The passphrase is used to automatically encrypt all certificates and profiles stored in this repo. Take this as seriously as you would any mission-critical password: make it robust and unique, and make sure you can't lose it. I'll use 1Password to generate a strong passphrase and store it securely.
Match finishes and offers a a helpful summary. Let's view the results in our private repo…
With that single command, match has created a full set of team development code signing assets. All certificates with their private keys live in a `certs` folder, and all profiles live in the `profiles` folder, all encrypted by OpenSSL. **match** also adds a README with helpful onboarding instructions for other team members. Pretty amazing!
## Applying Team Assets
Now that my team-wide dev assets are in my git repo, each team member will need to deploy these to their macs, so we're all using the identical credentials. Each developer runs:
```bash
fastlane match development
```
As you'd expect, this downloads and decrypts all the assets directly to their macs, storing them in their Keychains and file system as needed. As advertised, match really makes this easy and fast!
## Wrapping up Match's Capabilties
Match can do much more. It handles multiple targets, makes adding and removing devices a snap,  creates custom entitlements, deeply simplifies multi-team development, and a lot more.
# Lecture: Integrating with Lanes
Naturally, match integrates into lanes, so that you can automatically fetch your team's code signing certificates as part of any fastlane workflow.
**[Slide ]** Match actions in a lane 
```ruby
lane :myLane do
	# ...

	# register team devices
	# run match

	# ...
end
```
You typically do this via 2 actions:
First, you invoke the `register_devices` action:
```ruby
register_devices(devices_file: "./devices.txt")
```
**[Slide ]** Devices\_file\_example_ where the `devices_file` is a `csv` file listing your team's devices.
Then, you invoke `match` itself, along with any options:
```ruby
match(type: "development", <options>)
```
In addition to "development", you can use "appstore", "adhoc" and "enterprise"
You can add the option `force_for_new_devices`to automatically regenerates your provisioning profile if your team's device count has changed. Or you can simply use the `force` option, causing the profile to be regenerated whenever the lane is run.
As you saw in the command line, the simplicity of this API really hides how much match does for you under the hood.
# Conclusion
Match delivers on fastlane's vision of making it easy to use a team-based approach to code signing. In the next episode, you'll get hands-on experience with match, as you create a new lane just for match actions. See you there!