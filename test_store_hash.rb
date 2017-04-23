require "minitest/autorun"
require_relative "store_hash.rb"

class TestInStock < Minitest::Test

	def test_return_need_bread
		item = 'bread'
		kitchen_inventory = {'bread' => 0, 'milk' => 0, 'toilet paper' => 4, 'icecream' => 0, 'cereal' => 0, 'orange juice' => 2}
		assert_equal("You need to replenish your supply of #{item}.", store_hash(kitchen_inventory, item))
	end

	def test_return_have_toilet_paper
	 	item = 'toilet paper'
		kitchen_inventory = {'bread' => 1, 'milk' => 0, 'toilet paper' => 4, 'icecream' => 0, 'cereal' => 0, 'orange juice' => 2}
		assert_equal("You have #{kitchen_inventory[item]} of #{item} in house.", store_hash(kitchen_inventory, item)) 
	end
	
	def test_return_no_frozen_pizza
		item = 'frozen pizza'
	 	kitchen_inventory = {'bread' => 1, 'milk' => 0, 'toilet paper' => 4, 'icecream' => 0, 'cereal' => 0, 'orange juice' => 2}
	 	assert_equal("You have to make storage space for #{kitchen_inventory[item]}, a new stock item for you.", store_hash(kitchen_inventory, item)) 
	 end

end