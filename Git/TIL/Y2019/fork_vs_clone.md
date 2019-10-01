[fork vs clone](http://bryanpendleton.blogspot.com/2014/07/git-clone-vs-fork.html)

```ruby
The difference between forking and cloning is really a difference in intent and purpose:

The forked repository is mostly static. It exists in order to allow you
	to publish work for code review purposes. You don't do active development
	in your forked repository (in fact, you can't; because it doesn't exist on your computer,
	it exists on GitHub's server in the cloud).

The cloned repository is your active repo. It is where you do all your work.
	But other people generally don't have access to your personal cloned repo,
	because it's on your laptop. So that's why you have the forked repo,
	so you can push changes to it for others to see and review
```