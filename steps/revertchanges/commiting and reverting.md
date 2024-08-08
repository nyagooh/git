## Committing and Reverting: 
Add the following unwanted changes again, stage the file, commit the changes, then revert them back to their original state.
```bash
git add hello.sh 
```
- commit the changes
```bash
 git commit -m "Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment"
 ```
 ### output
 ```bash
 master 76e9837] Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment
 1 file changed, 2 insertions(+), 1 deletion(-)
 ```
 - revert head
 ```bash
 git revert head
 ```
 ### output
 ```bash
 [master 8f6436d] Revert "Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment"
 1 file changed, 1 insertion(+), 2 deletions(-)
 ```
