Pod::Spec.new do |s|
  s.name                           = 'cardedIdentity'

  # Do not update s.version directly.
  # Instead, update the VERSION file and run ./ci_scripts/update_version.sh
  s.version                        = '22.8.4'

  s.summary                        = 'Securely capture ID documents and selfies on iOS for use with carded\'s Identity API to confirm the identity of global users.'
  s.license                        = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage                       = 'https://carded.com/identity'
  s.authors                        = { 'carded' => 'support+github@carded.com' }
  s.source                         = { :git => 'https://github.com/carded/carded-ios.git', :tag => "#{s.version}" }
  s.frameworks                     = 'Foundation', 'WebKit', 'UIKit'
  s.requires_arc                   = true
  s.platform                       = :ios
  s.ios.deployment_target          = '12.0'
  s.swift_version		               = '5.0'
  s.weak_framework = 'SwiftUI'
  s.source_files                   = 'cardedIdentity/cardedIdentity/**/*.swift'
  s.ios.resource_bundle            = { 'cardedIdentity' => 'cardedIdentity/cardedIdentity/Resources/**/*.{lproj,json,png,xcassets}' }
  s.dependency                       'cardedCore', "#{s.version}"
  s.dependency                       'cardedUICore', "#{s.version}"
  s.dependency                       'cardedCameraCore', "#{s.version}"
end
