## Author Information:
Add an author comment to the file and commit the changes.
```bash
git add hello.sh
```
- commit changes
```bash
git commit -m "Add author comment"
```
### output
```bash
[master 499be95] Add author comment
 1 file changed, 3 insertions(+), 1 deletion(-)
 ```
 Oops the author email was forgotten, update the file to include the email without making a new commit, but include the change in the last commit.
 - add hello.sh file
 ```bash
 git add hello.sh
 ```
 - update the file to include the email without making a new commit
 ```bash
 git commit --amend
 ```
 ### output
 ```bash
 [master 8a9db0d] Add author comment
 Date: Tue Aug 6 16:41:22 2024 +0300
 1 file changed, 4 insertions(+), 1 deletion(-)
 ```




