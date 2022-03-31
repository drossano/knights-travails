# Knight's Travails

This repo contains my solution for the [Knight's Travails project](https://www.theodinproject.com/lessons/ruby-knights-travails) from The Odin Project's Ruby curriculum.

# Description

As stated on The Odin Project page the goal of this project is when given a starting and ending position on a chess board to determine the shortest path for a knight to move between those spaces.

# How it Works

The program creates an 8x8 chess board using a nested array. The knight class will then create a graph of all possible moves that the knight can make on the board and store it in an adjacency list. Then using the origin and destination provided by the user,  breadth first search is used to find the shortest path between the two spaces.

# How to Use

You can either run the program by running it on [replit](https://replit.com/@drossano1/knights-travails?v=1) or downloading the files and running the main.rb file.

# Reflection

This was certainly the most challenging project that I've completed to date. Figuring out how to graph the knight's moves and implementing breadth first search were the biggest issues. I feel that planning ahead will alleviate these roadblocks in the future.
