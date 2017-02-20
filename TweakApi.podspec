#
# Be sure to run `pod lib lint TweakApi.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "TweakApi"
    s.version          = "1.0.0"

    s.summary          = "tweak-api"
    s.description      = <<-DESC
                         Tweak API to integrate with all the Tweak services.  You can find out more about Tweak      at <a href='https://www.tweak.com'>https://www.tweak.com</a>, #tweak.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://bitbucket.org/thevoucherlink/tweak-api-client-ios-objectivec"
    s.license      = "Apache License, Version 2.0"
    s.source       = { :git => "https://bitbucket.org/thevoucherlink/tweak-api-client-ios-objectivec.git", :tag => "#{s.version}" }
    s.author       = { "Tweak" => "info@tweak.com" }

    s.source_files = 'TweakApi/**/*.{m,h}'
    s.public_header_files = 'TweakApi/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.5'
end

