The Monty Hall Problem is inspired by the Big Deal segement of the show [Let's Make A Deal](https://en.wikipedia.org/wiki/Let%27s_Make_a_Deal).

* The contestant is presented with three doors (A, B, and C), one of which has a prize behind it. The other two have no prize.
* The contestant would pick a door at random (B) giving them a 1/3 chance of getting the prize.
* Monty Hall (the host) opens a differet, loosing door (A).
* The contestant can then switch doors (C), or keep the same door (B).

You might think that each door has an equal chance of being the prize, but you are wrong. Switching doors gives the contestant a 2/3 chance of getting the prize as opposed to the 1/3 chance if the stay.

This Swift code attempts to show that by running 1000 contests and tallying the results.

The results print as follows:

* `x` represents a loosing door, `o` represents a winning door
* `1` represents the door the contestant chose first
* `R` represents the door Monty Hall revealed
* `F` represents the door the contestant switches to at the end

The output looks like this:

```
[x1  , o  F, x R ] - Won!
[o  F, x R , x1  ] - Won!
[x1  , x R , o  F] - Won!
[x  F, o1  , x R ] - Lose
[x  F, o1  , x R ] - Lose
[o  F, x R , x1  ] - Won!
...
[x  F, o1  , x R ] - Lose
[x R , o  F, x1  ] - Won!
[x1  , x R , o  F] - Won!
[o1  , x R , x  F] - Lose
Won: 655
Lost: 345
```

See this video for another explanation: https://www.youtube.com/watch?v=4Lb-6rxZxx0
