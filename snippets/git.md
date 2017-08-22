# GIT

Cancel last commit
    
    git reset --soft "HEAD^"

Reset local repository branch to be just like remote repository HEAD
    
    git reset --hard origin/dev

change remote server
   
    git remote set-url origin git://new.url.here

Show remote server
    
    git remote -v

## Syncing a fork

Add the upstream origin repo
    
    git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git

Update the fork
    
    git fetch upstream

Checkout your master and merge
    
    git checkout master
    git merge upstream/master

## Checkout PR

To fetch a remote PR into your local repo,

	git fetch origin pull/ID/head:BRANCHNAME

where ID is the pull request id and branchname is the name of the new branch that you want to create. Once you have created the branch, then simply

	git checkout BRANCHNAME
