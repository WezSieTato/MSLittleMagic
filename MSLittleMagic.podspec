Pod::Spec.new do |spec|
  spec.name = 'MSLittleMagic'
  spec.version = '0.1'
  spec.authors = { 'Marcin Stepnowski' => 'le0n.uo@gmail.com' }
  spec.homepage = 'https://github.com/WezSieTato/MSLittleMagic'
  spec.summary = 'Some class that you can find in other languages but not in Objective-C'
  spec.source = { :git => 'https://github.com/WezSieTato/MSLittleMagic.git', :tag => "v#{spec.version}" }
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.requires_arc = true

  spec.ios.frameworks = 'Foundation', 'UIKit'
  spec.osx.frameworks = 'Foundation'

  spec.ios.source_files = 'MSLittleMagic/*.{h,m}', 'MSLittleMagic/UI/*.{h,m}'

  spec.osx.source_files = 'MSLittleMagic/*.{h,m}'
end