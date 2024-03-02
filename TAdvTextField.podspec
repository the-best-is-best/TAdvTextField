

Pod::Spec.new do |s|
    s.name                     = 'TAdvTextField'
    s.version                  = '0.1.0'
    s.homepage                 = 'https://github.com/the-best-is-best/TAdvTextField'
    s.source                   = {:git => 'https://github.com/the-best-is-best/TAdvTextField.git', :tag => s.version.to_s }
    s.authors                  =  { 'the-best-is-best' => 'michelle.raouf@outlook.com' }
    s.license                  = { :type => 'MIT', :file => 'LICENSE' }
    s.summary                  = 'Advanced Text Field'
    s.ios.deployment_target = '14.0'
    s.source_files = 'Sources/TAdvTextField/**/*'

                
end
