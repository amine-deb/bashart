# git

## version
```bash
 git --version
 ```

## prepare the forlder
```bash
git init
git add .
git commit -m 'first init'
git status
```

```bash
git rm --cacher [file] 
> to remove the file (unstage)
```

##setup for this computer 

```bash
git config --global user.name 'amine-deb'  
git config --global user.email 'amine.bc@hotmail.com' 
```


## branching

```bash
git branche [barance name] 
```
> create a new branch

```bash
git checkout [barance name] 
```
> move to another branche

```bash
git merge [barance name]
```
> merge the [barance name] to the current one

## remote

```bash
git remote add origine https://github.com/amine-deb/bashart.git
```
> setting the target repository


```bash
git config --global credential.helper wincred
git push -f origin master
```
> push a specific branche to the remote repository



from git hub

or create a new repository on the command line
echo "# pythonart" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/amine-deb/pythonart.git
git push -u origin main
…or push an existing repository from the command line
git remote add origin https://github.com/amine-deb/pythonart.git
git branch -M main
git push -u origin main
…or import code from another repository
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.



