import sequtils

let listita = [49, 58, 76, 82, 88, 90]

let (pasaron, fallaron) = ( filter_it(listita, it > 60), filter_it(listita, it <= 60) )

echo pasaron
echo fallaron
