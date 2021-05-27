```html
git revert -m 1 <commit_number> (Commit Number)
```

```html
# do the needed changes in the feature branch
$ git commit -m "fixed issues in feature-branch'

# create new branch tracking dev branch (branch to which you merge)
$ git checkout -b revert-the-revert-branch -t dev

# revert the reversion commit
# find it from your git log
# in linux try: 'git log | grep revert -A 5 -B 5'
$ git revert <revert-commit-hash>

# checkout the original feature branch
$ git checkout feature-branch

# merge the revert branch (revert-the-revert-branch)
$ git merge revert-the-revert-branch

# handle merge conflicts and commit and PR
```