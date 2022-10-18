Pod::Spec.new do |s|
  s.name                           = 'cardedUICore'

  # Do not update s.version directly.
  # Instead, update the VERSION file and run ./ci_scripts/update_version.sh
  s.version                        = '22.8.4'

  s.summary                        = 'cardedUICore contains shared infrastructure used by all carded pods. '\
                                     'It is not meant to be used without other carded pods.'
  s.license                        = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage                       = 'https://carded.com/docs/mobile/ios'
  s.authors                        = { 'carded' => 'support+github@carded.com' }
  s.source                         = { :git => 'https://github.com/carded/carded-ios.git', :tag => "#{s.version}" }
  s.frameworks                     = 'Foundation', 'UIKit'
  s.requires_arc                   = true
  s.platform                       = :ios
  s.ios.deployment_target          = '12.0'
  s.swift_version		               = '5.0'
  s.weak_framework                 = 'SwiftUI'
  s.source_files                   = 'cardedUICore/cardedUICore/**/*.swift'
  s.ios.resource_bundle            = { 'cardedUICore' => 'cardedUICore/cardedUICore/Resources/**/*.{lproj,png,json}' }
  s.dependency                       'cardedCore', "#{s.version}"
end
