# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

workspace 'uCoolApp' 

def shared
  use_frameworks!
  pod 'SwiftyBeaver'
end


project 'CoolApp.xcodeproj'

  target 'CoolApp' do
  # Pods for CoolApp
    shared
    pod 'SwiftyJSON'
    pod 'Crashlytics'
    pod 'Mixpanel-swift'
    pod 'XLPagerTabStrip'

  target 'CoolAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CoolAppUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
