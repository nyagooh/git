## Merge Main into Greet Branch:
Start by merging the changes from the main branch into the greet branch.
```bash
git fetch 
git checkout greet
git merge master
```
### output
```bash
Merge made by the 'ort' strategy.
 README.md | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
 ```
 Switch to main branch and make the changes below to the hello.sh file, save and commit the changes
 ```bash
 git checkout master
 cd lib/
 git add hello.sh
 git commit -m "Update hello.sh content"
 ```
 ### output
 ```bash
 [master c48a39e] Update hello.sh content
 1 file changed, 3 insertions(+), 5 deletions(-)
 ```
 ## Merging Main into Greet Branch (Conflict): 
 ```bash
 cd ..
 git fetch
 git checkout greet
 git merge master
 ```
 ### output
 ```bash
 Auto-merging lib/hello.sh
CONFLICT (content): Merge conflict in lib/hello.sh
Automatic merge failed; fix conflicts and then commit the result.
```
## Rebasing Greet Branch: 
Go back to the point before the initial merge between main and greet.
- find hash of the initial commit
```bash
git log --oneline
```
### output
```bash
*   9a0942c (HEAD -> greet) Merge branch 'master' into greet
|\  
| * c48a39e (master) Update hello.sh content
* | 55ed78a Merge branch 'master' into greet
|\| 
| * d5f1f45 Add readme file for the project
* | d9346b1 Add target to  in the Makefile
* | b4046f1 Add greet script with default name handling
* | ca829bd Add a basic greeter script
|/  
* bf38216 Add content to makefile
* cf1ae1a Move hello.sh to lib/ directory
* 8a9db0d Add author comment
* 47b3908 (tag: v1) Refactor hello.sh script to use default name if not provided
* 96dcaf9 (tag: v1-beta) Add comment specifying default greeting in hello.sh script
* 1d60f24 Add comment specifying default greeting in hello.sh script
* a27191c Add comments to hello.sh script for clarity
```
- reset it to the hash
```bash
git reset --soft 55ed78a
```

Rebase the greet branch on top of the latest changes in the main branch.
```bash
git checkout master
git fetch
git checkout greet
git rebase master
```
### output
```bash
Auto-merging lib/hello.sh
CONFLICT (content): Merge conflict in lib/hello.sh
error: could not apply b4046f1... Add greet script with default name handling
hint: Resolve all conflicts manually, mark them as resolved with
hint: "git add/rm <conflicted_files>", then run "git rebase --continue".
hint: You can instead skip this commit: run "git rebase --skip".
hint: To abort and get back to the state before "git rebase", run "git rebase --abort".
```
- how to solve the conflict
```bash
git add lib/hello.sh
git rebase --continue
```
### output
```bash
[detached HEAD a3698b2] Add greet script with default name handling
 1 file changed, 11 insertions(+)
Successfully rebased and updated refs/heads/greet.
```
## Merging Greet into Main:
 Merge the changes from the greet branch into the main branch.
 ```bash
 git fetch
 git checkout master
 git merge greet
 ```
 ### output
 ```bash
 Updating c48a39e..510ce26
Fast-forward
 Makefile       |  1 +
 lib/greeter.sh |  7 +++++++
 lib/hello.sh   | 11 +++++++++++
 3 files changed, 19 insertions(+)
 create mode 100644 lib/greeter.sh
 ```
## Understanding Fast-Forwarding and Differences:
Explain fast-forwarding and the difference between merging and rebasing.

History Preservation:

    Merging preserves the complete history of changes from both branches, including the diverging paths and the merge commit.
    Rebasing rewrites commit history to create a linear history. It makes it appear as though the feature branch was developed from the latest commit of the target branch.

Merge Commits:

    Merging creates a merge commit to combine the histories.
    Rebasing does not create a merge commit. Instead, it rewrites the commit history.

Conflict Resolution:

    Merging requires resolving conflicts once if there are any during the merge.
    Rebasing may require resolving conflicts at multiple points during the rebase process (one per commit being rebased).

Commit History:

    Merging shows a branch’s commit history with a non-linear graph.
    Rebasing results in a cleaner, linear commit history.

Use Cases:

    Merging is often used for combining feature branches into main branches, especially in shared repositories.
    Rebasing is used for keeping a clean history before merging or for updating a feature branch with the latest changes from the main branch.




