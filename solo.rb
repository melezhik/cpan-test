log_level          :info
log_location       STDOUT
file_cache_path    "#{Dir.pwd}/cache"
file_backup_path   "#{Dir.pwd}/backup"
cache_options({ :path => "#{Dir.pwd}/checksums", :skip_expires => true})
Mixlib::Log::Formatter.show_time = true
cookbook_path [  
    Dir.pwd,
    "#{Dir.pwd}/cookbooks"
]

