As you likely expect from our other video courses, this course includes `Beginning` and `Ending` project folders for each episode. However, because of the special nature of `fastlane`, you'll have to do a couple of things to update and "hydrate" these projects before using them. Here's the drill:
---
First, inside the project `fastlane` directory, we'll build up the following files over the life of this course:
- Appfile
- Deliverfile
- Devicefile
- Fastfile
- Matchfile
- Precheckfile
Not every episode will include all of these. But for each of these that are included in a given `Beginning` or `Ending` project, you'll need to replace my info with yours. For example, my Appfile looks like this:
```ruby
app_identifier "com.razeware.chew"
apple_id "bschick1@mac.com"
team_id "3YBJVXRAQH"
```
You'll need to replace my `app_identifier`, `apple_id`, and `team_id` with your own. 
---
Second, once you've done this for each of these files included in a particular `Beginning` and `Ending`  folder, you'll then need to run fastlane to recreate your code-signing assets. 
The steps needed will vary depending on where in the course you are:
- From the start of the course up to and including  Episode 1.09 `Beginning`, you can skip this step (because you won't yet be using fastlane to create your code-signing assets)
- Starting with Episode 1.09 `Ending` up to Episode 2.03 `Beginning` , you'll need to run `fastlane get_dev_certs` to recreate your code-signing assets. 
- Starting with Episode 2.03 `Ending` through the end of the course, you'll need to run `fastlane bootstrap_code_signing` to recreate your code-signing assets.  
