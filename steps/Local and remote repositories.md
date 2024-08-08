## in the work/ directory, make a clone of the repository hello as cloned_hello. (Do not use copy command)
```bash
git clone hello cloned_hello
```
### output
```bash
Cloning into 'cloned_hello'...
done.
```
## Show the logs for the cloned repository.
```bash
cd  cloned_hello
git log --oneline
```
### output
```bash
510ce26 (HEAD -> master, origin/master, origin/greet, origin/HEAD) Add target to  in the Makefile
a3698b2 Add greet script with default name handling
775f97a Add a basic greeter script
c48a39e Update hello.sh content
d5f1f45 Add readme file for the project
bf38216 Add content to makefile
cf1ae1a Move hello.sh to lib/ directory
8a9db0d Add author comment
47b3908 (tag: v1) Refactor hello.sh script to use default name if not provided
96dcaf9 (tag: v1-beta) Add comment specifying default greeting in hello.sh script
1d60f24 Add comment specifying default greeting in hello.sh script
a27191c Add comments to hello.sh script for clarity
dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
53400ab Create hello.sh script with basic 'echo hello world'
```
## Display the name of the remote repository and provide more information about it.
```bash
git remote -v
```
### output
```bash
origin  /home/nymaina/Desktop/work/hello (fetch)
origin  /home/nymaina/Desktop/work/hello (push)
```
- show information
```bash
 git remote show origin
 ```
 ### output
 ```bash
 * remote origin
  Fetch URL: /home/nymaina/Desktop/work/hello
  Push  URL: /home/nymaina/Desktop/work/hello
  HEAD branch: master
  Remote branches:
    greet  tracked
    master tracked
  Local branch configured for 'git pull':
    master merges with remote master
  Local ref configured for 'git push':
    master pushes to master (up to date)
```
## List all remote and local branches in the cloned_hello repository.
```bash
git branch -a
```
### output
```bash
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/greet
  remotes/origin/master
  ```
  ## Make changes to the original repository, update the README.md file with the provided content, and commit the changes.
  ```bash
  cd hello
  git add README.md
  git commit -m "Add update on the readme"
  ```
  ## inside the cloned repository (cloned_hello), fetch the changes from the remote repository and display the logs. Ensure that commits from the hello repository are included in the logs.
```bash
cd cloned_hello
git fetch origin
git log --oneline --graph --decorate --all
```
### output
```bash
 126b694 (origin/master, origin/HEAD) Add update on the readme
* 510ce26 (HEAD -> master, origin/greet) Add target to  in the Makefile
* a3698b2 Add greet script with default name handling
* 775f97a Add a basic greeter script
* c48a39e Update hello.sh content
* d5f1f45 Add readme file for the project
* bf38216 Add content to makefile
* cf1ae1a Move hello.sh to lib/ directory
* 8a9db0d Add author comment
| * 8f6436d (tag: oops) Revert "Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment"
| * 76e9837 Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment
|/  
* 47b3908 (tag: v1) Refactor hello.sh script to use default name if not provided
* 96dcaf9 (tag: v1-beta) Add comment specifying default greeting in hello.sh script
* 1d60f24 Add comment specifying default greeting in hello.sh script
* a27191c Add comments to hello.sh script for clarity
* dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
:
```
## Merge the changes from the remote main branch into the local main branch.
```bash
 git merge origin/master 
 ```
 ### output
 ```bash
 Updating 510ce26..126b694
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)
 ```
## Add a local branch named greet tracking the remote origin/greet branch.
```bash
git branch greet
git branch
```
### output
```bash
  greet
* master
```
## Add a remote to your Git repository and push the main and greet branches to the remote.
  ```bash
  cd hello
  git remote add origin https://learn.zone01kisumu.ke/git/nymaina/git.git
 git push origin master
 git push origin greet 
 ```
 ## "What is the single git command equivalent to what you did before to bring changes from remote to local main branch?"
 ```bash
 git pull origin main
 ```
its used to update your local main branch with changes from the main branch on the remote repository named origin