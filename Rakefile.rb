require 'rubygems'
require 'rake/gempackagetask'
spec=Gem::Specification.new do |s|
  s.name="qatool"
  s.version="1.1.17"
  s.author="Aaron Smith"
  s.add_dependency("swfheader",">=0.11")
  s.add_dependency("roo",">=1.2.3")
  s.add_dependency("rubyzip",">=0.9.4")
  s.add_dependency("nokogirl",">=1")
  s.add_dependency("spreadsheet",">=0.6.4.1")
  s.add_dependency("google-spreadsheet-ruby",">=0.1")
  s.homepage="http://qatool.mccannsf.com/"
  s.date=Time.now
  s.email="aaron.smith@mccannsf.com"
  s.bindir="bin"
  s.executables<<"qatool"
  s.summary="The qatool gem generates a qatool, preview page, and summary for banners"
  s.description="The qatool gem generates a qatool, preview page, and summary for banners"
  s.files=FileList['lib/**/*','bin/*'].to_a
  s.requirements<<"swf-util gem (http://code.google.com/p/swf-util/)"
end
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar=true
end
task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
  puts "generated latest version"
end