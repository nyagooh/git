##  Staging and Cleaning:
Introduce unwanted changes to the file, stage them, then clean the staging area to discard the changes.
```bash
git add hello.sh
```
- clean
```bash
git reset hello.sh
```
### output
```bash
Unstaged changes after reset:
M       hello.sh
```
- discard changes
```bash
git restore hello.sh
```
