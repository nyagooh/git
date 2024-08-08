## Moving hello.sh:
Using Git commands, move the program hello.sh into a lib/ directory, and then commit the move.
- make lib directory
```bash
 mkdir -p lib
 ```
 - move hello.sh to lib directory

 ```bash
  git mv hello.sh lib/
  ```

  - commit the changes

  ```bash
   git commit -m "Move hello.sh to lib/ directory"
  ``` 
  ### output
  ```bash
  [master cf1ae1a] Move hello.sh to lib/ directory
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename hello.sh => lib/hello.sh (100%)
 ```
 - Create a Makefile in the root directory of the repository with the provided content and commit it to the repository.
 ```bash
 touch Makefile
 ```
 - commit the changes
 ```bash
 git commit -m "Add content to makefile"
 ```
 


