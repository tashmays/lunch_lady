# Lunch Lady Pseudocode:
# Basic Objectives:
#   - user chooses from a list of main dishes
#   - user chooses 2 side dish items
#   - computer repeats users order
#   - computer totals lunch items and displays total

# Bonus Objectives:
#   - user can choose as many "add-on" items as they want before getting total
#   - user can clear their choices and start over
#   - user has a wallet total they start with and their choices cannot exceed what they can pay for

def lunch_lady
	puts '*** Main Entree ***'
	puts '1. Meatloaf - $1.00'
	puts '2. Myster - $1.00'
	puts '3. Slop - $1.00'
	puts 'Please make a selection 1 - 3'
end

lunch_lady

entree_input = gets.strip

def side_menu
	puts '*** Side Options ***'
	puts '1. Carrot - $1.00'
	puts '2. Peas - $1.00'
	puts '3. Bread - $1.00'
	puts 'Please make a selection 1 - 3'
end

side_menu

side_input = gets.strip

main_hash = {'entree' => entree_input,
						 'side' => side_input
						}

entree_hash = { '1' => 'Meatloaf',
						    '2' => 'Myster',
						    '3' => 'Slop'
					    }

side_hash = { '1' => 'Carrot',
							'2' => 'Peas',
							'3' => 'Bread'
						}

entree_price_hash = { '1' => '1.00',
											'2' => '1.00',
											'3' => '1.00'
							      }

side_price_hash = { '1' => '1.00',
										'2' => '1.00',
										'3' => '1.00'
									}

puts "You have ordered #{entree_hash[entree_input]} as an entree and #{side_hash[side_input]} as a side. Your total is $#{entree_price_hash[entree_input].to_i + side_price_hash[side_input].to_i} "
