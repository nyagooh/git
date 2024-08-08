## Exploring .git/ Directory: 
Navigate to the .git/ directory in your project and examine its contents.You will have to explain the purpose of each subdirectory, including objects/, config, refs, and HEAD in the audit.

```bash
ls -l
```

### output

```bash
drwxr-xr-x  2 nymaina bocal 4096 Jul 23 11:29 branches
-rw-r--r--  1 nymaina bocal   24 Ago  7 09:38 COMMIT_EDITMSG
-rw-r--r--  1 nymaina bocal   92 Jul 23 11:29 config
-rw-r--r--  1 nymaina bocal   73 Jul 23 11:29 description
-rw-r--r--  1 nymaina bocal   23 Ago  6 16:32 HEAD
drwxr-xr-x  2 nymaina bocal 4096 Jul 23 11:29 hooks
-rw-r--r--  1 nymaina bocal  245 Ago  7 09:38 index
drwxr-xr-x  2 nymaina bocal 4096 Ago  6 16:32 info
drwxr-xr-x  3 nymaina bocal 4096 Ago  6 16:32 logs
drwxr-xr-x 15 nymaina bocal 4096 Ago  7 09:38 objects
-rw-r--r--  1 nymaina bocal   41 Ago  6 16:15 ORIG_HEAD
-rw-r--r--  1 nymaina bocal  316 Ago  6 16:32 packed-refs
drwxr-xr-x  4 nymaina bocal 4096 Jul 23 11:29 refs
```
- brief explanation

branches/: Old directory for branch references .

COMMIT_EDITMSG: Temporary file for storing the commit message during a commit.

config: Repository-specific configuration settings.

description: Repository description for web interfaces.

HEAD: Points to the current branch or commit.

hooks/: Custom scripts that run at various points (e.g., pre-commit, post-commit).

index: Staging area tracking changes to be committed.

info/: Additional Git information, including exclude patterns.

logs/: Logs of changes to references like HEAD and branches.

objects/: Stores Git objects (commits, trees, blobs) by hash.

ORIG_HEAD: Stores the previous position of HEAD for recovery.

packed-refs: Packed list of references (branches, tags) for efficiency.

refs/: Contains references to commits for branches, tags, and remote branches.
## Latest Object Hash:
Find the latest object hash within the .git/objects/ directory using Git commands and print the type and content of this object using Git commands.
```bash
cd .git/objects/
 ls -1 |sort -n |tail -1
```
### output
```bash
49
```
- print type
```bash
cd 49
ls
```
### output
```bash
9be95dbe534a36a68cf8987009b80bfb46ef87
```
type
```bash
git cat-file -t 499be95dbe534a36a68cf8987009b80bfb46ef87
```
### output
```bash
commit
```
- print content 
```bash
git cat-file -p 499be95dbe534a36a68cf8987009b80bfb46ef87
```
### output
```bash
tree 18ca88fd6c3ea336af8e7e505f934833b0458d20
parent 47b3908dd4b4d53c01c2f463e51b20652aa755c4
author nymaina <annmaina614@gmail.com> 1722951682 +0300
committer nymaina <annmaina614@gmail.com> 1722951682 +0300

Add author comment
```
## Dumping Directory Tree:
 Use Git commands to dump the directory tree referenced by this commit.
 ```bash 
 100644 blob 463470c01a39f43961a65fd1c79375aa323ca23e    hello.sh
 ```
 ### output
 ```bash
 100644 blob 463470c01a39f43961a65fd1c79375aa323ca23e    hello.sh
 ```
 -   Dump the contents of the lib/ directory and the hello.sh file using Git commands.
 ```bash
 git show 499be95dbe534a36a68cf8987009b80bfb46ef87:hello.sh
 ```
 ### output
 ```bash
 #!/bin/bash

# Default is World
# Author: Jim Weirich
name=${1:-"World"}

echo "Hello, $name"
```


