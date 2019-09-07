fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios register_app
```
fastlane ios register_app
```

### ios get_dev_certs
```
fastlane ios get_dev_certs
```

### ios sync_device_info
```
fastlane ios sync_device_info
```
Update iOS UDID's on the Developer Portal
### ios sync_signing_assets
```
fastlane ios sync_signing_assets
```
Sync team Code-Signing assets
### ios build_appstore
```
fastlane ios build_appstore
```
Build for App Store submission
### ios build_adhoc
```
fastlane ios build_adhoc
```
Build for Ad Hoc submission
### ios distribute_to_appstore
```
fastlane ios distribute_to_appstore
```

### ios distribute_to_installr
```
fastlane ios distribute_to_installr
```

### ios release
```
fastlane ios release
```

### ios lint
```
fastlane ios lint
```

### ios document
```
fastlane ios document
```

### ios ping_slack
```
fastlane ios ping_slack
```


----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
