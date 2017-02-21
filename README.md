# git-scripts

`github-create.sh`

- create **org repo**, not a personal repo

- inspired by [metaraine](https://coderwall.com/p/mnwcog/create-new-github-repo-from-command-line) and [Eli Fatsi](https://www.viget.com/articles/create-a-github-repo-from-the-command-line)

- default `repo name= local cwd name`, default `org name = d3b-center`

- run local `git init` first to have  `git push` work properly

  ```shell
    $ github-create
    Repo name (hit enter to use 'git-scripts')?
    git-scripts
    Org name (hit enter to use 'd3b-center')?
    d3b-center
    Private Repo, true/false? (hit enter to use 'false')
    true
    Creating Github repository 'git-scripts' at https://api.github.com/orgs/d3b-center/repos... done.
    Pushing local code to remote ... done.
  ```


`github-delete.sh`

- delete **org repo**, not personal repo