
platform :ios do

  lane :first do
    archive 
    sign
    upload
  end

  lane :second do
    build_app(scheme: "myAmazingApp") #be sure this matches!
    upload_to_testflight
  end

end

