Pod::Spec.new do |s|

  s.name         = "DCViewController"
  s.version      = "1.1"
  s.summary      = "Some extension for UIViewController"

  s.homepage     = "https://github.com/Tangdixi/DCViewController" 

  s.license      = { 
	:type => 'MIT', 
	:text => 'The DCTaskReactor use the MIT license' 
  }

  s.author             = { "Tangdixi" => "Tangdixi@gmail.com" }

  s.platform     = :ios, '7.0'

  s.source       = { 
	:git => "https://github.com/Tangdixi/DCViewController.git", 
	:tag => "1.1"
  }

  s.source_files  = 'DCViewController/*.{h,m}'

  s.frameworks = 'Foundation','UIKit'

  s.requires_arc = true

end
