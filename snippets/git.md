# GIT

## Commit
## Cancel last commit
git reset --soft "HEAD^"

## change remote server
git remote set-url origin git://new.url.here

## Show remote server
git remote -v

## Syncing a fork

### Add the upstream origin repo
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git

### Update the fork
git fetch upstream

### Checkout your master and merge
git checkout master
git merge upstream/master