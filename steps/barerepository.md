## What is a bare repository and why is it needed?
A bare repository  is a repository without a working directory; it only contains the Git data (metadata and history). 
It’s used for central repositories where multiple users push and pull changes. 
It’s ideal for servers and minimizes disk usage by not checking out files.

## Create a bare repository named hello.git from the existing hello repository.

```bash
git clone --bare  hello hello.git
```
### output
```bash
Cloning into bare repository 'hello.git'...
done.
```
## add the bare hello.git repository as a remote to the original repository hello.
```bash
cd hello
 git remote add bare ../hello.git/
 git remote -v
 ```
 ### output
 ```bash
 bare    ../hello.git/ (fetch)
bare    ../hello.git/ (push)
```
## Change the README.md file in the original repository with the provided content: commit then and push them
```bash
git add README.md
git commit -m "update readme"
git push origin master
```
### output
```bash
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 340 bytes | 340.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: . Processing 1 references
remote: Processed 1 references in total
To https://learn.zone01kisumu.ke/git/nymaina/git.git
   93f7133..d635a07  master -> master
   ```
## Switch to the cloned repository cloned_hello and pull down the changes just pushed to the shared repository.
```bash
cd cloned_hello
git remote set-url https://learn.zone01kisumu.ke/git/nymaina/git.git
git fetch origin 
git pull origin master 
```