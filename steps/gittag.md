## Referencing Current Version: 
Tag the current version of the repository as v1.
- check if you are in the commit you want to tag
```bash
git log -1
```
### output
```bash
Author: nymaina <annmaina614@gmail.com>
Date:   Wed Jul 24 09:57:44 2024 +0300

    Refactor hello.sh script to use default name if not provided
```
- create tag for the latest commit
```bash
git tag v1
```
## Tagging Previous Version: 
Tag the version immediately prior to the current version as v1-beta, without relying on commit hashes to navigate through the history.
- find the previous commit
```bash
git log --oneline
```
### output
```bash
47b3908 (HEAD -> master, tag: v1) Refactor hello.sh script to use default name if not provided
96dcaf9 Add comment specifying default greeting in hello.sh script
1d60f24 Add comment specifying default greeting in hello.sh script
a27191c Add comments to hello.sh script for clarity
dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
53400ab Create hello.sh script with basic 'echo hello world'
```
- tag previous commit
```bash
git tag -a v1-beta HEAD^ -m "Tagging previous version as v1-beta"
```
- show tags
```bash
git tag
```
### output
```bash
v1
v1-beta
```
## Navigating Tagged Versions:
 Move back and forth between the two tagged versions, v1 and v1-beta.
- list all tags
```bash
git tag
```
### output
```bash
v1
v1-beta
```
- navigating tag v1
```bash
git checkout v1
```
### output
```bash
Note: switching to 'v1'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD is now at 47b3908 Refactor hello.sh script to use default name if not provided
```
- navigating to v1-beta
```bash
git checkout v1-beta
```
### output
```bash
Previous HEAD position was 47b3908 Refactor hello.sh script to use default name if not provided
HEAD is now at 96dcaf9 Add comment specifying default greeting in hello.sh script
```
## Listing Tags:
Display a list of all tags present in the repository to verify successful tagging.
```bash
git tag
```
### output
```bash
v1
v1-beta
```
- to show detailed information about the tag
```bash
git show-ref --tags
```
### output
```bash
47b3908dd4b4d53c01c2f463e51b20652aa755c4 refs/tags/v1
bd5e48780f88bc133a07ee585f7355e25c206b1c refs/tags/v1-beta
```



