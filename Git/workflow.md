[env-branching-with-git](https://www.wearefine.com/news/insights/env-branching-with-git/)
[a-successful-git-branching-model](https://nvie.com/posts/a-successful-git-branching-model/)

```html
  -​1​ Overall branching model and main branches
  The selected branching model is based on this article:

  https://www.wearefine.com/mingle/env-branching-with-git/


  ​2​ Main branches
  master

  Production servers

  staging

  Staging Servers

  development

  Development servers


  ​3​ Branch naming
  Always use the best-suited prefix from the following list in your branch name:

  feature/

  for new features

  fix/

  for bug fixes

   improvement/

  for changes which do not necessarily fix features, but improve them

   refactor/

  for code refactoring


  ​4 Workflow
  Checkout new feature branch with suitable prefix in the name

  Pay attention from which branch you check out your new branch:

  Hotfix to production: checkout from master

  Hotfix to staging: checkout from staging

  New features and development server fixes: checkout from master (!)

  To deploy to development server, merge branch to development branch (do not delete the feature branch)

  To deploy to staging server, merge feature branch to staging branch (do not merge development branch, do not delete feature branch)

  To deploy to production server, merge feature branch to master (do not merge development or staging branch, delete feature branch

  Note: if you hotfix to staging, remember to merge the fix to development branch too! And if you hotfix to production, remember to merge the hotfix to BOTH staging and development branches.




  5 Merge requests

  When submitting a new merge request:

  Write shortly description of what this new feature does

  Write in description if there is something special that your feature needs to work properly e.g.

  New ENV variable takes place

  Some other service has open merge request which must be merged together


  6 Rules
  NEVER commit directly to an ENV branch (master, staging or development)

  NEVER merge one ENV branch into another

  Feature branches should be autonomously deployable


  7 Sprint planning, change requests and sprint schedule
  A sprint starts with a sprint planning

  Project manager has prepared a list of highest priority work, from which the team picks the tasks they feel confident to complete during the sprint

  During the sprint, the team focuses on development, and only production level critical issues can override the agreed tasks

  During the sprint, project manager collects information and prepares the tasks for the next sprint

  During the sprint, the customer:

  Helps project manager to collect information

  Sees features that need pre-approval on development server

  Approves features on staging server for production release

  Reports issues to dedicated Jira board (staging or production)

  Emergent work (tickets reported from the customer) are prioritized between project manager and the customer, and included in the next sprint’s work depending on the urgency


  8 Deployments and releases
  General:

  Development servers can be updated any time from development branch

  Staging is updated on Fridays from staging branch

  Production is updated on Tuesdays from master branch

  Development servers are team’s internal testing and development, and for project managers to discuss the new features and get early approval for the functionality

  Completed features are deployed to staging server in the end of the sprint on Friday

  Merge requests to staging branches are merged

  Staging branches are deployed to staging server

  Deployed features (ticket links) are listed in the deployment history document and reported to the customer

  Customer approves the features on staging during the following sprint

  In the end of the sprint, approved features are deployed to production on Tuesday

  Merge requests to master branches that have an approval are merged to master branch

  Master branches are deployed to production


  9 Task management
  Task management happens in Jira

  Each project has its own Jira project

  Customer can view and comment, not create tickets

  2 additional Jira projects (staging and production) are for customer reported issues and requests

  Each ticket should have a severity status, according to which the project manager sorts out the priority of the issue

  Sprint level task management happens in centralized Jira Agile Board, where project manager creates the sprints and lists the highest priority tasks, combining work from different projects and customer reported issues boards
```