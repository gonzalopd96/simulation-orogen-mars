require 'orocos'
require 'readline'
include Orocos

Orocos.initialize

Orocos.run 'tether' do
    
    mars = TaskContext.get 'mars'
    tether = TaskContext.get 'tether'

    Orocos.apply_conf_file(mars,'/opt/workspace/bundles/corobx_simulation/config/orogen/mars::Task.yml',['default','rappelling_maguez'])
    mars.configure
    mars.start

    tether.configure
    tether.start
  

    Readline::readline("Press ENTER to quit") do

    end

end 