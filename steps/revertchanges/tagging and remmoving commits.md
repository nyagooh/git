 ## Tagging and Removing Commits:
  Tag the latest commit with oops, then remove commits made after the v1 version. Ensure that the HEAD points to v1.
```bash
git tag oops
```
- check the commit hash for tag v1
```bash
git log --oneline
```
### output
```bash
8f6436d (HEAD -> master, tag: oops) Revert "Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment"
76e9837 Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment
47b3908 (tag: v1) Refactor hello.sh script to use default name if not provided
96dcaf9 (tag: v1-beta) Add comment specifying default greeting in hello.sh script
1d60f24 Add comment specifying default greeting in hello.sh script
a27191c Add comments to hello.sh script for clarity
dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
53400ab Create hello.sh script with basic 'echo hello world'
```
- ensure head points to v1
```bash
git reset --soft 47b3908
```
- check if  head is pointing v1
```bash
git log --oneline
```
### output
```bash
47b3908 (HEAD -> master, tag: v1) Refactor hello.sh script to use default name if not provided
96dcaf9 (tag: v1-beta) Add comment specifying default greeting in hello.sh script
1d60f24 Add comment specifying default greeting in hello.sh script
a27191c Add comments to hello.sh script for clarity
dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
53400ab Create hello.sh script with basic 'echo hello world'
```
