VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/sculpin.rb'

if (File.file?(path + '/Sculpin.yaml'))
  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    Sculpin.configure(config, YAML::load(File.read(path + '/Sculpin.yaml')))
  end
else
  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    Sculpin.configure(config, YAML::load(File.read(path + '/Sculpin.default.yaml')))
  end
end
