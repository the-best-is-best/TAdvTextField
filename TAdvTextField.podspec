

Pod::Spec.new do |s|
    spec.name                     = 'TAdvTextField'
    spec.version                  = '0.1.0'
    spec.homepage                 = 'https://github.com/the-best-is-best/TAdvTextField'
    spec.source                   = {:git => 'https://github.com/the-best-is-best/TAdvTextField.git', :tag => s.version.to_s }
    spec.authors                  = 'the-best-is-best'
    spec.license                  = '`'
    spec.summary                  = 'Handle Error Apis with Failure class for Ktor.'
    spec.ios.deployment_target = '14.0'
    s.source_files = 'Sources/TAdvTextField/**/*'

                
end
