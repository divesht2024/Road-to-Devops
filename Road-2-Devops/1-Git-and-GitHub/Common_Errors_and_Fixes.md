# Common Git & GitHub Errors and Bug Fixes

## 1. Not a git repository

**Error:**

```
fatal: not a git repository (or any of the parent directories): .git
```

**Fix:**

```bash
cd path/to/your/repo
git init
```

---

## 2. Remote origin already exists

**Error:**

```
fatal: remote origin already exists.
```

**Fix:**

```bash
git remote -v
git remote remove origin
git remote add origin <repo-URL>
```

---

## 3. Failed to push some refs

**Error:**

```
! [rejected]        master -> master (fetch first)
```

**Fix:**

```bash
git fetch origin
git merge origin/master
git push origin master
```

---

## 4. Merge conflicts

**Error:**

```
CONFLICT (content): Merge conflict in <file>
```

**Fix:**

```bash
# Resolve conflicts manually in editor
git add <file>
git commit -m "Resolved merge conflict"
```

---

## 5. Refusing to merge unrelated histories

**Error:**

```
fatal: refusing to merge unrelated histories
```

**Fix:**

```bash
git pull origin master --allow-unrelated-histories
```

---

## 6. Authentication failed

**Error:**

```
remote: Invalid username or password.
```

**Fix:**

```bash
git remote set-url origin https://<PAT>@github.com/username/repo.git
```

---

## 7. Branch not found

**Error:**

```
error: pathspec 'branch_name' did not match any file(s) known to git
```

**Fix:**

```bash
git branch -a
git checkout -b branch_name origin/branch_name
```

---

## 8. Detached HEAD

**Error:**

```
You are in 'detached HEAD' state.
```

**Fix:**

```bash
git checkout master
# or
 git checkout -b new_branch
```

---

## 9. Cannot pull with rebase

**Error:**

```
error: Pull with rebase cannot be used because you have local changes.
```

**Fix:**

```bash
git stash
git pull --rebase
git stash pop
```

---

## 10. File too large

**Error:**

```
fatal: File is over 100 MB
```

**Fix:**

```bash
git lfs install
git lfs track "<file>"
git add .gitattributes
git commit -m "Track large file with LFS"
git push origin master
```

---

## Tips

* Always run `git status` before committing or pushing.
* Use `.gitignore` to avoid committing unnecessary files.
* Pull regularly to stay updated with the remote repository.


📘 Author: Divesh Tayade
🎯 Part of My DevOps Learning Journey
🗓️ October 2025