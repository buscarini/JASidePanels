Pod::Spec.new do |s|
  s.name         =  'JASidePanels'
  s.version      =  '1.3.3'
  s.license      =  'MIT'
  s.summary      =  'UIViewController container designed for presenting a center panel with revealable side panels - one to the left and one to the right.'
  s.homepage     =  'https://github.com/gotosleep/JASidePanels'
  s.author       =  { 'Jesse Andersen' => 'gotosleep@gmail.com', 'José Manuel Sánchez' => 'buscarini@gmail.com' }
  s.source       =  { :git => 'https://github.com/buscarini/JASidePanels.git', :tag => "#{s.version}", :submodules => true }
  s.platform     =  :ios
  s.source_files =  'JASidePanels/Source/*'
  s.framework    =  'QuartzCore'
  s.requires_arc =  true
end