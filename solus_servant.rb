require 'sinatra'

# Config operations
get '/vz/change/:disk_number' do
  system("sed -i 's|VE_ROOT=/disk[1-4]/|VE_ROOT=/disk#{params[:disk_number]}/|' /etc/vz/vz.conf")
  system("sed -i 's|VE_PRIVATE=/disk[1-4]/|VE_PRIVATE=/disk#{params[:disk_number]}/|' /etc/vz/vz.conf")
end