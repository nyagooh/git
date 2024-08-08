 ## Git commits to commit
 1. Within the work directory, establish a subdirectory named hello
 ```bash
 mkdir work
 cd work
 mkdir hello
 ```
 2. Inside this directory, generate a file titled hello.sh
 ```bash
 cd hello
 touch hello.sh
 ```
 3. input the following content:
    echo "Hello, World"
   ```bash
   nano hello.sh 
  ```
4. Initialize the git repository in the hello directory.

   ```bash
   git init
   Initialized empty Git repository in /home/nymaina/Desktop/work/hello/.git/
   ```

 5. Check the status.
    ```bash
    git status
    ``` 
    and act accordingly with the output of the executed command.
    ```bash
     git add hello.sh 
     git commit -m "Create hello.sh script with basic 'echo hello world'"
     ```

  6. Change the hello.sh content to the following:
     - #!/bin/bash
     -  echo "Hello, $1"
     ```bash
     nano hello.sh
     ```

  7. Stage the changed file
    ```bash
    git add hello.sh 

    ```   
   commit the changes
   ```bash
   git commit -m "Refactor hello.sh script to use command-line argument for personalized greeting"
   ```
   The working tree should be clean.
   ```bash
   git status

   On branch master
   nothing to commit, working tree clean
   ```

  8 . Modify the hello.sh file to include comments and stage it.
  ```bash
   git add hello.sh 
   ```
   ```bash
   git commit -m "Add comments to hello.sh script for clarity"
   ```

  9.Make two separate commits:
    . The first commit should be for the comment in line 3.#!/bin/bash
    
      # Default is "World"

   ```bash
    nano hello.sh 
   ```
    add

   ```bash
    git add hello.sh 
   ```
    commit
  ```bash
    git commit -m "Add comment specifying default greeting in hello.sh script"
  ```
    . The second commit should include changes made to lines 4 and 5.
   ```bash
    git add hello.sh
  ```
    commit
    
   ```bash
    git commit -m "Refactor hello.sh script to use default name if not provided"
   ```



   
   
