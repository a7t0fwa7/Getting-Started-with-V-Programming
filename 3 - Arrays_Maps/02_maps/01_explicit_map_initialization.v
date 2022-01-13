mut books := map[string]int{}
books['V on Wheels'] = 320
books['Go for Dummies'] = 279

println(books) // {'V on Wheels': 320, 'Go for Dummies': 279}

/*
The following code presents the syntax to define a map in V:

mut MAP_NAME := map[KEY_TYPE]VALUE_TYPE{}

*/

/*
The preceding syntax shows the explicit initialization of an empty mutable map. 
Here, MAP_NAME is a variable name for the map that follows a standard variable naming convention. 
Then, to the right-hand side of :=, we have used the map keyword. 

KEY_TYPE must be a primitive data type such as string, rune, and voidptr or a numeric type. 
KEY_TYPE must be represented between [ and ] square brackets. 

After the key type is specified in square brackets, we need to mention the value type followed by empty { and } curly brackets.

As the explicit initialization doesn't support key-value pairs to be passed as parameters between { and }, we can initialize the map with the syntax shown here:

MAP_NAME[KEY_1] = VALUE_1

MAP_NAME[KEY_2] = VALUE_2
.
.
MAP_NAME[KEY_N] = VALUE_N

/*