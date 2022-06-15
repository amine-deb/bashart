# git

## version
 git --version

## prepare the forlder
git init
git add .
git commit -m 'first init'
git status

git rm --cacher [file] 
> to remove the file (unstage)

##setup for this computer 

git config --global user.name 'amine-deb'  
git config --global user.email 'amine.bc@hotmail.com' 


## branching

git branche [barance name] 
> create a new branch

git checkout [barance name] 
> move to another branche

git merge [barance name]
> merge the [barance name] to the current one

## remote

git remote add origine https://github.com/amine-deb/bashart.git
> setting the target repository


git config --global credential.helper wincred
git push -f origin master
> push a specific branche to the remote repository




