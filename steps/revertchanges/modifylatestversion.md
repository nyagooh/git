## Modify the latest version of the file with unwanted comments, then revert it back to its original state before staging using a Git command.
```bash
git restore hello.sh
```
- To see what you reverted to:
```bash
cat hello.sh
```
### output
```bash
#!/bin/bash

# Default is "World"
name=${1:-"World"}
echo "Hello, $name"
```
