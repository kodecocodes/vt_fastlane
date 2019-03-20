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
### ios frame_test
```
fastlane ios frame_test
```

### ios sync_app_info
```
fastlane ios sync_app_info
```
Ensure app is registered with App Store Connect
### ios sync_device_info
```
fastlane ios sync_device_info
```

### ios sync_all_development
```
fastlane ios sync_all_development
```
Sync team Development assets
### ios sync_all_adhoc
```
fastlane ios sync_all_adhoc
```

### ios sync_all_appstore
```
fastlane ios sync_all_appstore
```

### ios sync_signing_assets
```
fastlane ios sync_signing_assets
```
Sync Team Code-Signing Assets
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

### ios distribute_to_tryouts
```
fastlane ios distribute_to_tryouts
```

### ios release
```
fastlane ios release
```

### ios build_appstore__git
```
fastlane ios build_appstore__git
```

### ios lint
```
fastlane ios lint
```

### ios document
```
fastlane ios document
```

### ios register_app
```
fastlane ios register_app
```

### ios get_dev_certs
```
fastlane ios get_dev_certs
```

### ios ping_slack
```
fastlane ios ping_slack
```

### ios sl
```
fastlane ios sl
```

### ios ike
```
fastlane ios ike
```


----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
