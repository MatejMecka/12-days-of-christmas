main = putStrLn $ concat $ map day_lyrics [1..12]

day :: Integer -> String
day 1 = "first"
day 2 = "second"
day 3 = "third"
day 4 = "fourth"
day 5 = "fifth"
day 6 = "sixth"
day 7 = "seventh"
day 8 = "eight"
day 9 = "ninth"
day 10 = "tenth"
day 11 = "eleventh"
day 12 = "twelfth"

item :: Integer -> String
item 1 = "A Partridge in a Pear Tree\n\n"
item 2 = "Two Turtle Doves, and\n"
item 3 = "Three French Hens\n"
item 4 = "Four Calling Birds\n"
item 5 = "Five Gold Rings\n"
item 6 = "Six Geese a-Laying\n"
item 7 = "Seven Swans a-Swimming\n"
item 8 = "Eight Maids a-Milking\n"
item 9 = "Nine Ladies Dancing\n"
item 10 = "Ten Lords a-Leaping\n"
item 11 = "Eleven Pipers Piping\n"
item 12 = "Twelve Drummers Drumming\n"

day_items :: Integer -> String
day_items 1 = item 1
day_items 2 = item 2 ++ item 1
day_items n = concat $ map item $ enumFromThenTo n (n - 1) 1

day_lyrics :: Integer -> String
day_lyrics n = "On the " ++ (day n) ++ " day of Christmas, my true love gave to me:\n" ++ (day_items n)
