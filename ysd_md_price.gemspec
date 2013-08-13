Gem::Specification.new do |s|
  s.name    = "ysd_md_price"
  s.version = "0.2.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2013-08-09"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.description = "Price management"
  s.summary = "Price management"
  s.homepage = "http://github.com/yuraksisa/ysd_md_price"  
  
  s.add_runtime_dependency "data_mapper", "1.2.0"
  s.add_runtime_dependency "ysd_md_configuration"  # Configuration
  s.add_runtime_dependency "ysd_core_plugins"  # Configuration

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "dm-sqlite-adapter" # Model testing using sqlite
      
end
