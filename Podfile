# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'


workspace 'ModularExample.xcworkspace'
project 'ModularExample.xcodeproj'


def networking_pod
  pod 'Networking', :path => 'Modules/Networking'
end

def core_pod
  pod 'Core', :path => 'Modules/Core'
end

def data_pod
  pod 'Data', :path => 'Modules/Data'
end

def first_module_pod
  pod 'FirstModule', :path => 'Modules/FirstModule', :testspecs => ['Tests']
end

def second_module_pod
  pod 'SecondModule', :path => 'Modules/SecondModule'
end


def modules_pods
  networking_pod
  core_pod
  data_pod
  first_module_pod
  second_module_pod
end

target 'ModularExample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  modules_pods
  # Pods for ModularExample
end

target 'ModularExampleTests' do
  inherit! :search_paths
  # Pods for testing
end

target 'ModularExampleUITests' do
  # Pods for testing
end



target 'Networking_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Modules/Networking/Example/Networking.xcodeproj'
  # Pods for ModularExample
  networking_pod
end


target 'Core_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Modules/Core/Example/Core.xcodeproj'
  # Pods for ModularExample
  
  core_pod
end

target 'Data_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Modules/Data/Example/Data.xcodeproj'
  
  # Pods for ModularExample
  data_pod
  
end

target 'FirstModule_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Modules/FirstModule/Example/FirstModule.xcodeproj'
  
  # Pods for ModularExample
  first_module_pod
  
end

target 'SecondModule_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Modules/SecondModule/Example/SecondModule.xcodeproj'
  
  # Pods for ModularExample
  second_module_pod
end


