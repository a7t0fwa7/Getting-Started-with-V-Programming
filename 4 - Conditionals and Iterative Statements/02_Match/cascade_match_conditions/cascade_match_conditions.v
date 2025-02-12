module main

fn breakfast_menu(day string) string {
	return match day {
		'Monday' {
			'Bread, Jam, Half boiled Egg'
		}
		'Tuesday', 'Thursday' {
			'Bread, Jam, Juice'
		}
		'Wednesday' {
			'Milk, Bread, Fruit Bowl'
		}
		'Friday', 'Sunday' {
			'Cereals, Bread, Jam, Half boiled Egg'
		}
		'Saturday' {
			'Milk, Bread, Fruit Bowl'
		}
		else {
			'invalid input'
		}
	}
}

fn main() {
	friday_menu := breakfast_menu('Friday')
	println('The Friday Menu is : $friday_menu')

	sunday_menu := breakfast_menu('Sunday')
	println('The Sunday Menu is: $sunday_menu')

	tuesday_menu := breakfast_menu('Tuesday')
	println('The Tuesday Menu is: $tuesday_menu')

	thursday_menu := breakfast_menu('Thursday')
	println('The Thursday Menu is: $thursday_menu')
}
