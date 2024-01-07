# git

## version
```bash
 git --version
 ```

## prepare the forlder
```bash
branch -M main
git init
git add .
git commit -m 'first init'
git status
```

```bash
git rm --cacher [file] 
> to remove the file (unstage)
```

## setup for this computer 

```bash
git config --global user.name 'amine-deb'  
git config --global user.email 'amine.bc@hotmail.com' 
```


## branching

```bash
git branch [baranch name] 
```
> create a new branch

```bash
git checkout [baranch name] 
```
> move to another branch

```bash
git merge [baranch name]
```
> merge the [baranch name] to the current one

## remote

```bash
git branch -M main
git remote add origin https://github.com/amine-deb/bashart.git
git push -u origin main
```
> setting the target repository


```bash
git config --global credential.helper wincred
git push -f origin master
```
> push a specific branche to the remote repository




