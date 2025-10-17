# 🧠 Git Commands Cheat Sheet

This file is a complete collection of essential **Git commands** you’ll use daily as a **DevOps Engineer** or **Developer**.  
It covers setup, versioning, branching, merging, collaboration, and more — all in one place.

---

## ⚙️ 1. Git Setup and Configuration

| Task | Command |
|------|----------|
| Install Git | `sudo apt install git` |
| Check Git version | `git --version` |
| Set global username | `git config --global user.name "Your Name"` |
| Set global email | `git config --global user.email "youremail@example.com"` |
| View all config settings | `git config --list` |
| Help for any command | `git help <command>` |

---

## 📁 2. Repository Management

| Task | Command |
|------|----------|
| Initialize a new local repo | `git init` |
| Clone a remote repo | `git clone <repo-url>` |
| Add a remote repo | `git remote add origin <url>` |
| View all remotes | `git remote -v` |
| Remove a remote | `git remote remove origin` |

---

## 🧱 3. Working with Files

| Task | Command |
|------|----------|
| Check repo status | `git status` |
| Add all files to staging | `git add .` |
| Add a specific file | `git add <filename>` |
| Unstage a file | `git reset <filename>` |
| Commit changes | `git commit -m "Your commit message"` |
| Amend the last commit | `git commit --amend` |
| Remove file from repo | `git rm <filename>` |
| Rename or move a file | `git mv <old> <new>` |

---

## 🕒 4. Viewing History

| Task | Command |
|------|----------|
| View commit history | `git log` |
| One-line history | `git log --oneline` |
| Graph view of branches | `git log --graph --oneline --decorate --all` |
| View changes in files | `git diff` |
| Show a specific commit | `git show <commit-id>` |

---

## 🌱 5. Branching and Switching

| Task | Command |
|------|----------|
| List all branches | `git branch` |
| Create new branch | `git branch <branch-name>` |
| Switch to a branch | `git checkout <branch-name>` |
| Create and switch | `git checkout -b <branch-name>` |
| Delete local branch | `git branch -d <branch-name>` |
| Force delete branch | `git branch -D <branch-name>` |
| Rename branch | `git branch -m <new-branch-name>` |
| View remote branches | `git branch -r` |

---

## 🔀 6. Merging and Rebasing

| Task | Command |
|------|----------|
| Merge a branch into current | `git merge <branch-name>` |
| Abort a merge | `git merge --abort` |
| Rebase current branch onto another | `git rebase <branch-name>` |
| Continue after rebase conflicts | `git rebase --continue` |
| Skip a conflicted commit during rebase | `git rebase --skip` |
| View merge conflicts | `git diff --name-only --diff-filter=U` |

---

## 🌍 7. Pushing and Pulling Changes

| Task | Command |
|------|----------|
| Push local changes to remote | `git push origin <branch>` |
| Push all branches | `git push --all origin` |
| Pull latest changes | `git pull origin <branch>` |
| Fetch changes (without merging) | `git fetch origin` |
| Set upstream branch | `git push -u origin <branch>` |
| Force push (use carefully) | `git push --force` |

---

## 🧩 8. Undoing Changes

| Task | Command |
|------|----------|
| Undo all uncommitted changes | `git restore .` |
| Undo changes to a specific file | `git restore <file>` |
| Revert a specific commit | `git revert <commit-id>` |
| Reset to previous commit (soft) | `git reset --soft <commit-id>` |
| Reset to previous commit (hard delete) | `git reset --hard <commit-id>` |
| Undo last commit (keep changes staged) | `git reset --soft HEAD~1` |
| Undo last commit (discard changes) | `git reset --hard HEAD~1` |

---

## 📦 9. Stashing Work

| Task | Command |
|------|----------|
| Save uncommitted changes temporarily | `git stash` |
| View all stashes | `git stash list` |
| Apply last stash | `git stash apply` |
| Apply a specific stash | `git stash apply stash@{n}` |
| Drop last stash | `git stash drop` |
| Clear all stashes | `git stash clear` |

---

## 🧠 10. Collaboration (Team Workflow)

| Task | Command |
|------|----------|
| Create Pull Request (on GitHub) | via web interface |
| Fetch all branches | `git fetch --all` |
| Compare branches | `git diff branch1..branch2` |
| Check remote URL | `git remote -v` |
| Pull latest changes from remote main | `git pull origin main` |
| Merge remote branch | `git merge origin/<branch>` |

---

## 🔐 11. Tagging Versions

| Task | Command |
|------|----------|
| Create a tag | `git tag <tag-name>` |
| Create a tag with message | `git tag -a <tag-name> -m "message"` |
| View all tags | `git tag` |
| Push a tag to remote | `git push origin <tag-name>` |
| Push all tags | `git push --tags` |
| Delete a tag locally | `git tag -d <tag-name>` |
| Delete a tag remotely | `git push origin --delete <tag-name>` |

---

## 🧰 12. Cleaning and Maintenance

| Task | Command |
|------|----------|
| Remove untracked files | `git clean -f` |
| Remove untracked files and directories | `git clean -fd` |
| Garbage collection | `git gc` |
| Verify integrity of Git objects | `git fsck` |

---

## 🧾 13. Shortcuts and Tips

| Task | Command |
|------|----------|
| Show last commit details | `git show HEAD` |
| Compare staged vs unstaged changes | `git diff --staged` |
| List changed files in last commit | `git diff-tree --no-commit-id --name-only -r HEAD` |
| Show who last modified each line | `git blame <filename>` |
| Find a commit by message keyword | `git log --grep="keyword"` |

---

## 🧠 14. Common Aliases (Optional but Useful)

You can define shortcuts for long Git commands.

```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
git config --global alias.st status
git config --global alias.last "log -1 HEAD"




**📘 Author: *Divesh Tayade  
**🎯 Part of My DevOps Learning Journey*  
**🗓️ October 2025