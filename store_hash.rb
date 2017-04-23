def store_hash(kitchen_inventory,item)

	if kitchen_inventory.include?(item) && kitchen_inventory[item] == 0 
		"You need to replenish your supply of #{item}."
	elsif kitchen_inventory.include?(item)
		"You have #{kitchen_inventory[item]} of #{item} in house."
	else	
		"You have to make storage space for #{kitchen_inventory[item]}, a new stock item for you."
	end

 end