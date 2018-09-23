Pod::Spec.new do |s|
  s.name         = "MovieClipsNetworking"
  s.version      = "1.0.1"
  s.summary      = "A short description of MovieClipsNetworking."
  s.description  = "N/A"
  s.homepage     = "http://github.com/stpdc/MovieClipsNetworking"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "stpdc" => "43500109+stpdc@users.noreply.github.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "http://github.com/stpdc/MovieClipsNetworking.git", :tag => "#{s.version}" }
  s.source_files  = "MovieClipsNetworking", "MovieClipsNetworking/**/*.{h,m,swift}"
end
