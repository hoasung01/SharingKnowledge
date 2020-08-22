```html
Suppose you have a bunch of music on your computer.
For each artist, you have a playcount.
```

| Music             | Playcount |
| ----------------- | --------- |
| RADIO HEAD        | 156       |
| KISHORE KUMAR     | 141       |
| THE BLACK KEYS    | 35        |
| NEUTRAL MILK HOTEL| 94        |
| BECK              | 88        |
| THE STROKES       | 61        |
| WILCO             | 111       |

```html
You want to sort this list from most the least played

One way is to go through this list and find the most-played artist.
Add that artist to a new list
```

| Music             | Playcount |       | Music             | Playcount |
| ----------------- | --------- |       | ----------------- | --------- |
| RADIO HEAD        | 156       |       | RADIO HEAD        | 156       |
| KISHORE KUMAR     | 141       |       |                   |           |
| THE BLACK KEYS    | 35        |   ->  |                   |           |
| NEUTRAL MILK HOTEL| 94        |       |                   |           |
| BECK              | 88        |       |                   |           |
| THE STROKES       | 61        |       |                   |           |
| WILCO             | 111       |       |                   |           |

`each go through this list will take O(n) times`

```html
Do it again to find the next-most-played list
```

| Music             | Playcount |       | Music             | Playcount |
| ----------------- | --------- |       | ----------------- | --------- |
|                   |           |       | RADIO HEAD        | 156       |
| KISHORE KUMAR     | 141       |       | KISHORE KUMAR     | 141       |
| THE BLACK KEYS    | 35        |   ->  |                   |           |
| NEUTRAL MILK HOTEL| 94        |       |                   |           |
| BECK              | 88        |       |                   |           |
| THE STROKES       | 61        |       |                   |           |
| WILCO             | 111       |       |                   |           |

`each go through this list will take O(n) times`

```html
Keep doing this, and you’ll end up with a sorted list.
```

| Music             | Playcount |
| ----------------- | --------- |
| RADIO HEAD        | 156       |
| KISHORE KUMAR     | 141       |
| WILCO             | 111       |
| NEUTRAL MILK HOTEL| 94        |
| BECK              | 88        |
| THE STROKES       | 61        |
| THE BLACK KEYS    | 35        |

`BigO: O(n^2)`
