
### Git large file tracking

Symptom:

```
remote: error: See https://gh.io/lfs for more information.
remote: error: File <filename> is * MB; this exceeds GitHub's file size limit of 100.00 MB
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
```

1. Install git lfs extension

```
sudo apt install git-lfs
```

2. Activate extension

```
git lfs install
```

3. Each large file needs to be tracked using .gitattributes

```
git lfs track <filename>
git add .gitattributes
```
4. On GitHub repository settings, under General tab, in the Archives section, tick "Include Git LFS objects in archives"

5. Now the file can be staged and committed for push

```
git add <filename>
git commit
git push
```
