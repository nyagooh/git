## Cleaning Unreferenced Commits:
  Ensure that unreferenced commits are deleted from the history, meaning there should be no logs for these deleted commits.
```bash
git status
```
### output
```bash
On branch master
nothing to commit, working tree clean
```
- remove unrefrenced commits
```bash
git gc --prune=now
```
### output
```bash
Enumerating objects: 23, done.
Counting objects: 100% (23/23), done.
Delta compression using up to 8 threads
Compressing objects: 100% (12/12), done.
Writing objects: 100% (23/23), done.
Total 23 (delta 0), reused 23 (delta 0), pack-reused 0
```
- verify whether the unrefrenced commits are removed
```bash
git reflog
```
### output
```bash
8f6436d (HEAD, tag: oops) HEAD@{0}: checkout: moving from master to oops
47b3908 (tag: v1, master) HEAD@{1}: reset: moving to 47b3908
8f6436d (HEAD, tag: oops) HEAD@{2}: revert: Revert "Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment"
76e9837 HEAD@{3}: commit: Add unwanted comment to hello.sh for review\n\nThis commit introduces an unwanted comment
47b3908 (tag: v1, master) HEAD@{4}: checkout: moving from 96dcaf972093d1b5fe3cdd92e10228281400783d to master
96dcaf9 (tag: v1-beta) HEAD@{5}: checkout: moving from 47b3908dd4b4d53c01c2f463e51b20652aa755c4 to v1-beta
47b3908 (tag: v1, master) HEAD@{6}: checkout: moving from master to v1
47b3908 (tag: v1, master) HEAD@{7}: reset: moving to master
47b3908 (tag: v1, master) HEAD@{8}: reset: moving to 47b3908
dd8c967 HEAD@{9}: reset: moving to dd8c967
dd8c967 HEAD@{10}: reset: moving to dd8c967
53400ab HEAD@{11}: reset: moving to 53400aba9d227cddbfa6e2cb8a38800efb6a33ec
53400ab HEAD@{12}: reset: moving to 53400aba9d227cddbfa6e2cb8a38800efb6a33ec
dd8c967 HEAD@{13}: reset: moving to dd8c96765a312f3963cacc100cbf2515f16b3c9b
1d60f24 HEAD@{14}: reset: moving to 1d60f24c58f2f1b8f30da9f7a84cb59a79ad783d
47b3908 (tag: v1, master) HEAD@{15}: commit: Refactor hello.sh script to use default name if not provided
96dcaf9 (tag: v1-beta) HEAD@{16}: commit: Add comment specifying default greeting in hello.sh script
```
