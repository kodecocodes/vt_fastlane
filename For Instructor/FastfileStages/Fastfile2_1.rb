default_platform(:ios)

platform :ios do
  
  lane :register_app do
    produce(
      username: "bschick1@mac.com",
      app_identifier: "com.razeware.ChewChewTrain",
      app_name: "Chew Chew Train",
      team_name: "Brian Schick",
      itc_team_name: "Brian Schick"
    )
  end

  lane :get_dev_certs do
    cert(development: true)
    sigh(development: true)
  end 

  lane :sync_all_development do
    match(type: "development")
  end
    
  lane :sync_device_info do
    register_devices(
      devices: {
        "brin excess" => "00008020-001C491C0268002E",
        "Pro 120" => "f25bd75b4b3d643c749902dce888ae83c1f1f4ad"
      }
    )
    match(type: "development")
  end
 
end
