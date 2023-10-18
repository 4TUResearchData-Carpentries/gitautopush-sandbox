    echo $HOME
    pwd
    cd
    pwd
    # cd /c/Users/<accountname>
    pwd
    ls
    cd Desktop/
    ls
    mkdir -p 2310-gitcodev/git
    ls
    ls 2310-gitcodev/
    cd 2310-gitcodev/git/
    ls
    pwd
    echo $SHELL
    echo
    git
    git --version
    git version
    git help
    git helphelp
    git help help
    git config
    git config --list
    git config --global core.editor nano
    git config --global core.autocrlf input # false for Win
    git config --list
    git help config
    git help glossary
    git help -g
    pwd
    ls
    echo 'first line'
    echo 'first line' >lines.txt
    ls
    cat lines.txt
    echo 'second line' >>lines.txt
    cat lines.txt 
    git status
    git init
    ls
    ls -a
    ls -aF
    ls -aF .git
    ls
    # TRACKING CHANGES IN FILES
    git status 
    git add lines.txt
    git status 
    ls -a .git
    git diff lines.txt
    echo 'third line' >>lines.txt
    cat lines.txt
    git diff lines.txt
    git status 
    git add lines.txt
    git status 
    git add lines.txt
    git status 
    git diff lines.txt
    # instructor experimenting
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex01 
    # first exercise displayed
    echo 'fourth line' >>lines.txt
    cat lines.txt 
    git status 
    git diff lines.txt
    git add lines.txt 
    cat lines.txt 
    git status 
    git diff lines.txt
    #
    # end of exercise
    # TRACKING DIRECTORIES
    mkdir directory
    ls
    ls -F
    git status 
    touch directory/emptyfile.txt
    ls -R
    ls -RF
    git status 
    git status -u
    git help status
    git add directory
    git status
    # NOT TRACKING FILES
    history
    history 20
    history 20 >history.log
    cat history.log 
    git status
    echo '*.log'
    echo '*.log' >.gitignore
    git status
    ls -a
    ls -aF
    git add .gitignore
    git status 
    echo 'lines.txt' >>.gitignore
    cat .gitignore 
    git status 
    git add .gitignore 
    git status 
    # IGNORE UNTRACKED DIRECTORIES (before it was about files)
    touch directory/trackme.txt
    touch directory/donttrackme.txt
    ls directory/
    git status 
    echo 'directory' >> .gitignore
    cat .gitignore 
    git status
    echo '!directory' >> .gitignore
    cat .gitignore 
    git status 
    cat .gitignore 
    echo 'directory' >>.gitignore
    cat .gitignore 
    git status 
    git help gitignore
    git status 
    git add .gitignore 
    git status 
    git rm --staged directory/emptyfile.txt
    git rm --cached directory/emptyfile.txt 
    git status 
    ls -FR
    # UNDOING CHANGE WITH THE INDEX
    cat lines.txt 
    echo 'fifth line' >>lines.txt 
    cat lines.txt 
    git status 
    git diff lines.txt
    git restore lines.txt
    cat lines.txt 
    git status 
    git diff lines.txt
    git restore lines.txt
    cat lines.txt 
    git status 
    echo '!directory' >>.gitignore
    ls
    git status 
    git status -u
    git add directory/trackme.txt 
    git status -u
    git add directory/donttrackme.txt 
    git add directory/emptyfile.txt 
    git status 
    git add .gitignore 
    git status 
    git rm --cached directory/donttrackme.txt 
    git status 
    rm directory/
    rm -r directory/
    ls -FR
    git status 
    git restore directory
    git status 
    ls -FR directory/
    # restart
    touch directory/donttrackme.txt
    git status 
    git rm directory
    git rm -r directory
    git status 
    git rm -rf directory
    git status 
    ls -FR directory/
    git restore directory
    git status 
    git status -u
    mv directory/donttrackme.txt directory/trackne.txt
    git status -u
    # use the command `git mv <oldname> <newname>`
    # lines.txt Lines.txt
    git status -u
    git mv lines.txt Lines.txt
    git status -u
    # COMMITTING CHANGES (IDENTITY + MESSAGE)
    cat Lines.txt 
    git diff
    git status 
    git commit -m 'Add first four lines' Lines.txt
    git status 
    git log
    # exercise 
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex04
    git status 
    git commit -m 'Add .gitignore' .gitignore 
    git status 
    rm -r directory  # to keep things clean
    git status 
    ls
    git log
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex05
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex06
    echo 'fifth line' >>Lines.txt 
    cat Lines.txt 
    git status 
    git add Lines.txt 
    git status 
    git commit -m 'Add fifth lines' Lines.txt 
    git status 
    history
    git log
    # exercise 5
    git status 
    git diff
    echo 'sixth line' >>Lines.txt 
    git diff
    git add Lines.txt 
    git diff
    git diff Lines.txt
    git commit -m 'Add sixth line' Lines.txt 
    git diff
    git log
    git log --oneline
    git status 
    echo 'seventh line' >>Lines.txt 
    git diff Lines.txt
    git add Lines.txt 
    git diff Lines.txt
    git status 
    git log --oneline
    git diff HEAD Lines.txt
    git diff e278702 Lines.txt
    git diff HEAD~1 Lines.txt
    git log --oneline
    git diff 7f2ca Lines.txt
    git diff HEAD~2 Lines.txt
    git diff HEAD~3 Lines.txt
    git diff HEAD~7 Lines.txt
    git diff Lines.txt
    git diff HEAD~3 Lines.txt
    git diff HEAD HEAD~1 Lines.txt
    git diff HEAD~1 HEAD Lines.txt
    git diff HEAD~4 HEAD~2 Lines.txt
    git diff HEAD~3 HEAD~2 Lines.txt
    git log
    # DAY 2
    pwd
    git status 
    git log --oneline
    git diff Lines.txt
    git diff HEAD Lines.txt
    git diff HEAD~1 Lines.txt
    git diff HEAD HEAD~1 Lines.txt
    git diff HEAD~1 HEAD Lines.txt
    diff HEAD HEAD Lines.txt 
    git diff HEAD HEAD Lines.txt 
    git diff HEAD~2 HEAD~2 Lines.txt
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex07
    cat Lines.txt 
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L1-ex07
    #  ANNOTATED TAGS
    git log --oneline
    git tag 'hey'
    git log --oneline
    git log
    git tag 'hey' HEAD~1
    git tag 'hey2' HEAD~1
    git log --oneline
    git tag 'hey3' HEAD~5
    git tag 'hey4' 87ab7b6 
    git log --oneline
    git diff HEAD HEAD~1 Line.txt
    git diff HEAD HEAD~1 Lines.txt
    git diff hey hey2 Lines.txt
    git log --oneline
    git diff hey hey2 Lines.txt
    echo 'eighth line' >>Lines.txt
    cat Lines.txt 
    git status 
    git add Lines.txt 
    git status 
    git commit -m 'Add eighth line' Lines.txt
    git log --oneline
    git tag -d hey1
    git tag -d hey4
    git log --oneline
    git diff hey hey4 Lines.txt
    git log --oneline
    git tag -d hey2
    git tag -d hey
    git tag HEAD~4 v1
    git tag v1 HEAD~4
    git log --oneline
    git tag v2 HEAD~3
    git tag v3 HEAD~2
    git log --onelein
    git log --oneline
    git tag v4 HEAD~1
    git tag v5 HEAD
    git log --oneline
    # ANNOTATED TAG (THE PREVIOUS WAS A LIGHTWEIGHT TAG!)
    git tag -a
    git tag -a -m 'First annotated tag' 
    git tag -a -m 'First annotated tag' TAG1
    git log --oneline
    git tag
    git show
    git show HEAD~1
    true
    # there is a gap in the notes
    git status 
    git branch
    git branch B1
    git branch
    git status 
    cat Lines.txt 
    git log--oneline
    git log --oneline
    git branch -m B1 B2
    git log --oneline
    git branch -d B2
    git log --oneline
    git branch -m master foo
    git log --oneline
    git branch -d foo
    git branch -m foo main
    git branch
    git status 
    git log --oneline
    git branch B1
    git branch
    git log --oneline
    git switch
    git switch B1
    git log --oneline
    git branch B2
    git log --oneline
    git switch B2
    git log --oneline
    git switch main 
    git log --oneline
    ~cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L2-ex01
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L2-ex01
    git branch
    git branch -d B1 B2
    git branch
    git log --oneline 
    cat Lines.txt 