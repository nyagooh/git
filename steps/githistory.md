## Show the history of the working directory.
```bash
git log
```
### output
```bash
Author: nymaina <annmaina614@gmail.com>
Date:   Wed Jul 24 09:57:44 2024 +0300

    Refactor hello.sh script to use default name if not provided

commit 96dcaf972093d1b5fe3cdd92e10228281400783d
Author: nymaina <annmaina614@gmail.com>
Date:   Wed Jul 24 09:55:31 2024 +0300

    Add comment specifying default greeting in hello.sh script

commit 1d60f24c58f2f1b8f30da9f7a84cb59a79ad783d
Author: nymaina <annmaina614@gmail.com>
Date:   Tue Jul 23 15:59:32 2024 +0300

    Add comment specifying default greeting in hello.sh script
:
```
## Show One-Line History for a condensed view showing only commit hashes and messages.
```bash
git log --oneline
```
### output
```bash
47b3908 (HEAD -> master) Refactor hello.sh script to use default name if not provided
96dcaf9 Add comment specifying default greeting in hello.sh script
1d60f24 Add comment specifying default greeting in hello.sh script
a27191c Add comments to hello.sh script for clarity
dd8c967 Refactor hello.sh script to use command-line argument for personalized greeting
53400ab Create hello.sh script with basic 'echo hello world'
```
## Controlled Entries:
-   You need to customize the log output by specifying the number of entries or a time range. Customize it to display the last 2 entries and to view the commits made within the last 5 minutes.
```bash
git log -n 2
```
### output
```bash
Author: nymaina <annmaina614@gmail.com>
Date:   Wed Jul 24 09:57:44 2024 +0300

    Refactor hello.sh script to use default name if not provided

commit 96dcaf972093d1b5fe3cdd92e10228281400783d
Author: nymaina <annmaina614@gmail.com>
Date:   Wed Jul 24 09:55:31 2024 +0300

    Add comment specifying default greeting in hello.sh script
```
```bash
git log --since="5 minutes ago"
```
## Personalized Format:
-  Show logs in a personalized format, including the commit hash, date, message, branch information, and author name, resembling * e4e3645 2023-06-10 | Added a comment (HEAD -> main) [John Doe]
```bash
git log --pretty=format:"* %h %ad | %s (%d) [%an]" --date=short
```
- * %h %ad | %s (%d) [%an]:
- *: Adds a bullet point before each entry.
- %h: Commit hash (e.g., e4e3645).
- %ad: Author date (formatted as YYYY-MM-DD using --date=short).
- %s: Commit message (e.g., Added a comment).
- %d: Ref names (branch names like HEAD -> main).
- %an: Author name (e.g., John Doe).
- --date=short: Formats the date as YYYY-MM-DD.
 ### output
 ```bash
 * 47b3908 2024-07-24 | Refactor hello.sh script to use default name if not provided ( (HEAD -> master)) [nymaina]
* 96dcaf9 2024-07-24 | Add comment specifying default greeting in hello.sh script () [nymaina]
* 1d60f24 2024-07-23 | Add comment specifying default greeting in hello.sh script () [nymaina]
* a27191c 2024-07-23 | Add comments to hello.sh script for clarity () [nymaina]
* dd8c967 2024-07-23 | Refactor hello.sh script to use command-line argument for personalized greeting () [nymaina]
* 53400ab 2024-07-23 | Create hello.sh script with basic 'echo hello world' () [nymaina]
```