# Intro
In this episode, we'll meet **match**, fastlane's action dedicated specifically to managing its revolutionary team-based approach to App Store asset management. You'll also meet its helper action **register-devices**, and see how both these tools integrate directly into fastlane lanes. Let's take a closer look…
# Lecture: Introducing Match
**[Slide ]** Match documentation
Like other fastlane actions, match has a dedicated documentation page at **docs.fastlane.tools/actions/match**. Note that under the hood, match is an alias for the **sync_code_signing** action. You'll meet this again later in this episode.
**[Slide ]** Match points :]
match sets a high bar for itself, and among other things, promises to enable you to:
- Auto sync all team member keys and profiles via git.
- Handle all the heavy lifting of creating, storing, and retrieving your certificates and profiles.
- Support apps with multiple targets / bundle ID's.
- Support apps with multiple targets / bundle ID's.
- Support multiple Apple accounts and teams.
- Let you set up code signing on a new machine in under a minute.
- And lots more. 
That's a tall order. Let's give match a spin and see how it, well, matches up to its promises…
# Setting up match
## Demo: Setting up a Private Git Repository
The first thing we need to use match is a **private** git repository dedicated solely to storing certificates. Again, I'll emphasize: This must be **private**, or life as we know it will end. 
At the time of this writing, **GitHub** doesn't offer private repositories for free accounts, but other well-regarded git resources like **GitLab** (gitlab.com) and **BitBucket** (bitbucket.org) do.  I'll create a private repository at gitlab, and I'll name it "**team-certificates**", like so:
I've previously created a free gitlab account, logged in to it, and added my private SSH public key. 
I create a new blank *project* (gitlab's name for a git repo) make sure it's Private, and choose "Create Project".  Great! That's set to go.
## Interlude: Dedicated account
**[Slide ]** Optional Dev Account
Fastlane suggests that you might want to add a special shared Apple Developer Portal account and dedicate this exclusively to shared team assets and the match workflow. 
This isn't required, but the advantage is that it gives you a clean account dedicated solely to your team code signing assets. You might name this account something like "**share@mygroup.com**", and each team member would simply reference this account whenever they run match. 
If you choose not to do this, you'll need to select an existing team member's account as the one you'll use with match, and just make sure all team members remember to use this account for all their match actions. 
To demo, I'll just use my own personal account for simplicity.
## Demo: Initializing Match
With our private repo in place, we can put match to work in the command line. 
I'll start by opening my Terminal app and navigating to our sample project folder. Then I'll run
`fastlane match init`
This will initialize match for our projectI'm prompted to enter the URL of my private git repo, and once I do, the process quickly completes and I get a helpful message about the new Matchfile the process has created in the project fastfile subdirectory. 
I'll open this up in my code editor and take a quick look. You can see that the file is initialized with the url of our new private repo, and that the default type of match is set to development. We'll return to this file in a moment.
## Demo: Removing the Clutter
Fastlane recommends that you start with a clean set of certificates and profiles. Since I'm reusing my existing account, I'll begin by nuking my preexisting development certificates and profiles:
`fastlane match nuke development`
This both removes all my preexisting certificates from the App Store environment. (As a sidetone, I could also clear out other types of accounts, but since we're focusing on development in this section, I'll just clear out these.)  
Doing this also creates a helpful README file with useful instructions for onboarding additional team members. 
## Demo: Recreating Development Certs and Profiles
Now let's recreate clean certificates with match:
`fastlane match development
`I'm prompted to add my app bundle identifier, and then a passphrase for encryption. Match will use this to automatically encrypt all certificates and profiles stored in this repo. Take this as seriously as you would any mission-critical password: make it robust and make sure you can't lose it. I'll use 1Password to generate a strong passphrase and also to store it securely.
…
Match finishes and gives us its typical clean and informative summary. Let's take a look in our private repo…
As you can see, match has added a new development certificate, a development provisioning profile, and a private key.
<!-- Self: confirm and see if this can be improved, once git issues are resolved. -->
Take a moment to consider how much fastlane has just done: With a single command, it's created a full set of development code signing assets — complete with certificate, private key, and provisioning profile. But even more impressive, all this is automatically encrypted and integrated directly into git. 
## And… Much more
With everything we've covered in this episode, we've only brushed the surface of match's potential. You can find a lot more information about match's additional powers on its documentation site. Here's a sampling of some of its further capabilities:
<!-- Self: Complete this -->
- Multiple Target Handling
- Adding Devices
- Adding Team Members
- Changing Password
- Running in Read-only mode
## Lecture: Integrating with Lanes
<!-- Self: Complete this
Call out text file for devices, more…
 -->
# Conclusion
<!-- Self: Complete This -->
