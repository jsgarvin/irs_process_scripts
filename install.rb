# Install hook code here
unless defined?(RAILS_ROOT)
  $stderr.puts "$0 must be run from RAILS_ROOT with -rconfig/boot"
  exit
end

require 'fileutils'
['reaper','spawner','inspector'].each do |filename|
  FileUtils.cp_r(RAILS_ROOT + '/vendor/plugins/irs_process_scripts/script/' + filename, RAILS_ROOT + '/script/process')
end
