## Create and Switch to New Branch:
Create a local branch named greet and switch to it.
```bash
git checkout -b greet
```
### output
```bash
Switched to a new branch 'greet'
```
- n the lib directory, create a new file named greeter.sh and add the provided code to it. Commit these changes.
```bash
cd lib
```
- create a file
```bash
touch  greeter.sh
git add greeter.sh
git commit -m "Add a basic greeter script"
```
Update the lib/hello.sh file by adding the content below, stage and commit the changes.

```bash
git add hello.sh
git commit -m "Add greet script with default name handling"
```

Update the Makefile with the following comment and commit the changes.
```bash
git add Makefile
git commit -m "Add target to `lib/hello.sh` in the Makefile"
```
Switch back to the main branch, compare and show the differences between the main and greet branches for Makefile, hello.sh, and greeter.sh files.
```bash
git checkout master
git diff master..greet -- Makefile hello.sh greeter.sh
```
### output
```bash
diff --git a/Makefile b/Makefile
index 407082d..12d4ffb 100644
--- a/Makefile
+++ b/Makefile
@@ -1,3 +1,4 @@
+# Ensure it runs the updated lib/hello.sh file
 TARGET="lib/hello.sh"
 
 run:
 ```
 Generate a README.md file for the project with the provided content. Commit this file.
```bash
touch README.md
git add README.md 
git commit -m "Add readme file for the project"
```
Draw a commit tree diagram illustrating the diverging changes between all branches to demonstrate the branch history.
```bash
git log --graph --oneline --all
```
### output
```bash
* d5f1f45 (HEAD -> master) Add readme file for the project
| * d9346b1 (greet) Add target to  in the Makefile
| * b4046f1 Add greet script with default name handling
| * ca829bd Add a basic greeter script
|/  
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
* 53400ab Create hello.sh script with basic 'echo hello world'
```