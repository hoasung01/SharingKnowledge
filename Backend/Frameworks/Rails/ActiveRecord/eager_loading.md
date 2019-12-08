```html
  1. includes()
  2. preload()
  3. eager_load()
  source: https://blog.bigbinary.com/2013/07/01/preload-vs-eager-load-vs-joins-vs-includes.html
```


```html
  preload loads the association date in separate query
```

```ruby
  User.preload(:posts).to_a

  # =>
  SELECT "users".* FROM "users"
  SELECT "posts".* FROM "posts"  WHERE "posts"."user_id" IN (1)
```

```html
  since preload always generate 2 sql so we can't use posts table in
  where condition. Following query will result in an error
```

```ruby
  User.preload(:posts).where("posts.desc='ruby is awesome'")

  # =>
  SQLite3::SQLException: no such column: posts.desc:
  SELECT "users".* FROM "users"  WHERE (posts.desc='ruby is awesome')
```

```html
  includes loads the association data in a seperate data just like preload.
  Howerver it is smarter than preload. Above we saw that preload failed for
  query `User.preload(:posts).where("posts.desc='ruby is awesome'")`.
  Let's try same with includes
```

```ruby
  User.includes(:posts).where('posts.desc = "ruby is awesome"').to_a

  # =>
  SELECT "users"."id" AS t0_r0, "users"."name" AS t0_r1, "posts"."id" AS t1_r0,
         "posts"."title" AS t1_r1,
         "posts"."user_id" AS t1_r2, "posts"."desc" AS t1_r3
  FROM "users" LEFT OUTER JOIN "posts" ON "posts"."user_id" = "users"."id"
  WHERE (posts.desc = "ruby is awesome")
```

```html
  As you can see includes switches from using two separate queries to
  creating a single LEFT OUTER JOIN to get the data. And it also applied
  the supplied condition.

  So includes changes from two queries to a single query in some cases.
  By default for a simple case it will use two queries. Let’s say that
  for some reason you want to force a simple includes case to use a
  single query instead of two. Use references to achieve that.
```

```ruby
  User.includes(:posts).references(:posts).to_a

  # =>
  SELECT "users"."id" AS t0_r0, "users"."name" AS t0_r1, "posts"."id" AS t1_r0,
         "posts"."title" AS t1_r1,
         "posts"."user_id" AS t1_r2, "posts"."desc" AS t1_r3
  FROM "users" LEFT OUTER JOIN "posts" ON "posts"."user_id" = "users"."id"
```

```html
  eager loading loads all association in a single query using LEFT OUTER JOIN
```

```ruby
  User.eager_load(:posts).to_a

  # =>
  SELECT "users"."id" AS t0_r0, "users"."name" AS t0_r1, "posts"."id" AS t1_r0,
         "posts"."title" AS t1_r1, "posts"."user_id" AS t1_r2, "posts"."desc" AS t1_r3
  FROM "users" LEFT OUTER JOIN "posts" ON "posts"."user_id" = "users"."id"
```

```html
  This is exactly what includes does when it is forced to make a single
  query when where or order clause is using an attribute from posts table.
```