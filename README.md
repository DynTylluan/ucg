# Untitled Cass Game
In the early hours of 2021-12-17, I was in a voice chat with a few of my friends when the topic of what the smallest possible game could be, being able to run on the lowest end of computers.

To make a long story short, we tried to make the smallest game possible - it was fun. I wrote the batch file version of the game for Windows, while my friend, a of [trwnh.com](https://trwnh.com), ported the game to be able to run on Linux, BSD, and macOS.

We wanted to make a game that had a plot and a win-lose situation to it, in the end, **the batch file version of the game is 190 bytes**, while the **shell script version is only 116 bytes**, because of this, don't expect all that much from the game as it has been stripped down to its bare bones.

This was fun to make, mostly as a thought experiment of how we can not only strip down code as much as possible and it still works, but also as to *what* is a computer game? This is a question that I am not really sure as to what the answer is, although I wanted to follow these rules as a base:

> A computer game must have some kind of interaction part to it

I feel like it would have been *way* too easy to have just simply made a `Hello, World!` program and call it a day, a player needs to be able to control what is happening in the game and see the effects of it.

> A computer game should have a win-lose state to it

Simply put, a player (or players) should be able to win or lose at the game. This is a classic in games, let alone computer games, and has been around for ages. Not all games _need_ to have the option of losing, think of games like I spy where the spy (the person who says "I spy with my little eye...") helps the guesser try and work out what the word is.

It is possible to die in this game, and in fact, when we were writing this, we were a _bit_ cheeky in the way that we determined _how_ the player would die.

If you open up the game now and read the text, it will tell you that if you press `1`, then you will live, `2` will kill you, while the first part is true, the second is a lie, we lied to you! You were duped! Hahaha!

Okay, so this is what the code looks like. The Python shell script version, as written by a:
```
#!/usr/bin/python
p=print
p('type 1 to win, 2 to die')
x=input()
m="win" if x=="1" else "ded"
p(m)
```

The Batch file version, as written by Cass:
```
set /p w=""
if %w% == 1 goto 1
goto 2
CLS
:2
CLS
ECHO You died. Press 1
```

Okay, so what is going on here? How did we lie to you? Simply put, if you press `2`, you will die, _but_, if you press anything else you will die. As a way to save on space, we made it so anything other than `1` will mean in a loss. `m="You won" if x=="1" else "You died"` (shell script) simply says that anything other than `1` will display `You died`, while `goto 2` (Batch) will do the exact same thing.

Hope you enjoyed being FOOLED! Ah ha haaa! >:D

## Extra Elements I Wanted
As well as the rules are shown, I wanted to have other things

> A story

Not every game *needs* to have a story; Pac-Man, Baba Is You, Rocket League, and Tetris are all examples of games with no story at all and are enjoyed all around the world. I doubt that anyone would say that any of those are _not_ games.

But for this, I thought it would be fun to add an extra element to it to add a challenge, originally I was going to call the game "Cass' Tiny Game" and the plot was that "You are on a train track and a train is about to hit you. To not die, press 1, to die and lose the game, press 2" (that was the whole thing).

It was too long, so I changed the plot to `You have drunk poison. To drink the antidote and win, PRESS '1', to not do this and die, PRESS '2'` - but again, that was too long, so it was changed to just "You are dying. 1 = live, 2 = die", less exciting, but it saves on space.

That counts as a plot, right? I mean, the player needs to think as to _why_ they are dying, a lot of games have elements where there is not much of a plot and the player can guess as to why the things are happening the way they are.

Whole game franchises like Five Nights at Freddy's and the early Super Mario games did not have much in the way of plot and are still considered to be games - am I pushing the definition too far? Probably, yeah.

> Be grammatically correct

I guess I could have done something as simple as `u r dying 1=live 2=die`, but I wanted this game to be grammatically correct like a nerd.

> Emotion

I was told that a game should make the player *feel* emotions. I'm not sure if I agree with that, I have played games that don't make me feel anything and I would still call them games.

I suppose I could say something like "as the player themself is about to die, then they should really care!", but I'm not sure.

I feel like as this game is just _so short_, it is not all that possible to make the player *feel* much, in fact, I have no doubt that a person would have more fun reading the text in the README file for it.

# Hey, I Think I Can Do Better

And I will be happy to see any attempt at trying to make the code _even smaller_, I feel like there might be some unholy way of doing it, but I just don't know how that would be done.

There _is_ the option to just straight up _remove_ all of the text so it looks like this for the shell script version...

```
#!/usr/bin/python
p=print
p('')
x=input()
m="" if x=="1" else ""
p(m)
```

...and like this for the batch file version...

```
@ECHO OFF
:0
CLS
ECHO 
set /p w=""
if %w% == 1 goto 1
goto 2
CLS
:2
CLS
ECHO 
set /p w=""
if %w% == 1 goto 0
goto 2
:1
CLS
ECHO 
PAUSE
```

But the thing is that *all* games should really have a way for the player to know what they need to do - how is a player meant to know if they are winning or losing if they can't see?

Regardless, if we remove all of the text that the end-user can see, then the **shell script version is 69 bytes** while **the batch version is 190 bytes**.

I'm writing as if this is a lot - it's not, it really isn't. For a reference, a 1x1 PNG image that is just white is larger than the shell script version, costing 84 bytes - a 1x1 image has almost zero use, while with 69 bytes you can *kind of* make a game and a sex joke.

Anyway, this code (and git) have been put into **[CC0](https://creativecommons.org/share-your-work/public-domain/cc0/)**, so if you want to fork this and _try_ and make a smaller version, go right ahead. Thinking about it, I am really unsure if it is even possible to copyright the code for this game as I feel like it would be ineligible for copyright and therefore in the public domain, because it consists entirely of information that is common property and contains no original authorship due to how simple it is (I am not offering legal advice). Despite this, it's officially CC0, much like this README.

# End Thoughts

This was fun to make, especially as I was being helped by a friend of mine (thank you, again). I want to play around with making small programs again. If you like this sort of thing, check out [r/TinyCode](https://old.reddit.com/r/tinycode), a subreddit for nerds that has even more examples of people making projects that use up very little code.

> Cass Python of [OwlyFans](https://owly.fans) and a of [trwnh.com](https://trwnh.com)
