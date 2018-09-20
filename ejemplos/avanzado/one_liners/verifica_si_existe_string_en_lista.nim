import sequtils, strutils

let palabras = ["nim", "nimlang", "nimble"]
let tweet = "This is an example tweet talking about nim and nimble."

echo palabras.map_it(tweet.contains(it)).any_it(it == true)
