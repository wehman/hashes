def webdev(hash_in)
 	hash_key = hash_in.keys
end

webdev_hash = {"front-end : user interface" => 1, 
				"back_end : server, application, database" => 2, 
				"full-stack : front- and back-end" => 3, 
				"rear-end : rookie web developer with little knowledge of the ends" => 4}
keys = webdev(webdev_hash)
puts "#{keys}"
puts " "
puts webdev_hash