
Pod::Spec.new do |s|
  s.name             = 'ThoraxMath'
  s.swift_version    = '4.2'
  s.version          = '1.1.0'
  s.summary          = 'Missing math'

  s.description      = <<-DESC
Math helpers that are missing in Swift library
                       DESC

  s.homepage         = 'https://github.com/yaro812/ThoraxMath'
  s.author           = { 'Thorax' => 'thorax@me.com' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/yaro812/ThoraxMath.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'ThoraxMath/*.swift', 'ThoraxMath/Extensions/*.swift'

end
