## Restore First Snapshot:Revert the working tree to its initial state, as captured in the first snapshot, and then print the content of the hello.sh file.
- First, you need to identify the hash of the initial commit. You can do this using git log
```bash
git rev-list --max-parents=0 HEAD
```
### output
```bash
53400aba9d227cddbfa6e2cb8a38800efb6a33ec
```
- Reset to the initial commit
```bash
git reset  --hard 53400aba9d227cddbfa6e2cb8a38800efb6a33ec
```
- Print the Content of hello.sh
```bash
cat hello.sh
```
### output
```bash
echo "Hello, World"
```
## Restore Second Recent Snapshot:Revert the working tree to the second most recent snapshot and print the content of the hello.sh file.
- find the hash of the second commit
```bash
git reflog
```
### output
```bash
53400ab (HEAD -> master) HEAD@{0}: reset: moving to 53400aba9d227cddbfa6e2cb8a38800efb6a33ec
53400ab (HEAD -> master) HEAD@{1}: reset: moving to 53400aba9d227cddbfa6e2cb8a38800efb6a33ec
dd8c967 HEAD@{2}: reset: moving to dd8c96765a312f3963cacc100cbf2515f16b3c9b
1d60f24 HEAD@{3}: reset: moving to 1d60f24c58f2f1b8f30da9f7a84cb59a79ad783d
47b3908 HEAD@{4}: commit: Refactor hello.sh script to use default name if not provided
96dcaf9 HEAD@{5}: commit: Add comment specifying default greeting in hello.sh script
1d60f24 HEAD@{6}: commit: Add comment specifying default greeting in hello.sh script
a27191c HEAD@{7}: commit: Add comments to hello.sh script for clarity
dd8c967 HEAD@{8}: commit: Refactor hello.sh script to use command-line argument for personalized greeting
53400ab (HEAD -> master) HEAD@{9}: commit (initial): Create hello.sh script with basic 'echo hello world'
```
- reset to second commit
```bash
git reset --hard dd8c967
```
### output
```bash
HEAD is now at dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
```
- print content of the file
```bash
cat hello.sh 
```
### output
```bash
#!/bin/bash

echo "Hello, $1"
```
## Return to Latest Version: Ensure that the working directory reflects the latest version of the hello.sh file present in the main branch, without referring to specific commit hashes.
```bash
git reset --hard master
```
### output
```bash
HEAD is now at 47b3908 Refactor hello.sh script to use default name if not provided
```
- print content of the file
```bash
cat hello.sh
```
### output
```bash

```

