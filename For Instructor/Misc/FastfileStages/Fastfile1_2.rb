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
  
end
