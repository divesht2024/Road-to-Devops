# 🔄 Git and GitHub Workflow – Complete Guide

This document explains the **complete workflow** of how Git (a version control system) and GitHub (a cloud-based hosting platform) work together for collaboration, versioning, and deployment — essential for every **DevOps Engineer**.

---

## 🧩 Understanding the Difference

| Tool | Purpose |
|------|----------|
| **Git** | Local version control tool that tracks changes in files. |
| **GitHub** | Cloud platform to host Git repositories and collaborate with others. |

---

## ⚙️ Basic Git + GitHub Workflow Overview

1. **Initialize a Git repository**  
2. **Make and commit changes locally**  
3. **Create and switch branches** for new features  
4. **Merge** branches after work completion  
5. **Push** local commits to GitHub  
6. **Create Pull Requests (PRs)** for code review  
7. **Collaborate and resolve merge conflicts**  
8. **Merge PRs into the main branch**  
9. **Deploy or automate workflows using GitHub Actions**

---

## 🏗️ Step-by-Step Git and GitHub Workflow

### 🥇 Step 1: Initialize Local Repository
Start version control for your project folder.

```bash
git init
```

This creates a hidden `.git` folder to track changes.

---

### 🥈 Step 2: Configure Git (one-time setup)
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

You can verify with:
```bash
git config --list
```

---

### 🥉 Step 3: Stage and Commit Files

Add files to the staging area:
```bash
git add .
```

Commit them to the local repository:
```bash
git commit -m "Initial commit"
```

---

### 🏷️ Step 4: Connect to a Remote GitHub Repository

Create a new repository on GitHub → Copy its HTTPS or SSH URL.

```bash
git remote add origin https://github.com/username/DevOps-Journey.git
```

---

### 🚀 Step 5: Push Code to GitHub

Push local commits to the main branch on GitHub:
```bash
git branch -M main
git push -u origin main
```

Now your project is live on GitHub!

---

## 🌱 Working with Branches

Branches let you work on new features safely.

### Create a New Branch
```bash
git branch feature-login
```

### Switch to the New Branch
```bash
git checkout feature-login
```

### Add, Commit, and Push the Feature
```bash
git add .
git commit -m "Added login feature"
git push origin feature-login
```

---

## 🧠 Step 6: Create a Pull Request (PR)

After pushing a branch, go to GitHub:
1. Click **Compare & Pull Request**.
2. Add a meaningful title and description.
3. Click **Create Pull Request**.

Team members review the PR, suggest changes, and finally **merge** it into `main`.

---

## ⚔️ Step 7: Merging and Resolving Conflicts

When two branches modify the same part of a file, a **merge conflict** occurs.

### To merge:
```bash
git checkout main
git merge feature-login
```

If conflicts appear:
- Open conflicted files in VS Code.
- Edit manually and remove markers:
  ```
  <<<<<<< HEAD
  Code from main branch
  =======
  Code from feature branch
  >>>>>>> feature-login
  ```
- Save, add, and commit:
  ```bash
  git add .
  git commit -m "Resolved merge conflict"
  ```

---

## 🔁 Step 8: Syncing Local and Remote Repositories

### To get the latest changes:
```bash
git pull origin main
```

### To update GitHub with your changes:
```bash
git push origin main
```

---

## 🧩 Step 9: Cloning a Repository

If you want to copy someone else’s project:
```bash
git clone https://github.com/username/repo-name.git
```

This downloads the full project history to your local system.

---

## 🧰 Step 10: Forking a Repository

**Forking** creates your own copy of a public GitHub repository.  
Used to contribute to open-source projects.

1. Click **Fork** on the repo page.
2. Modify your forked repo.
3. Create a Pull Request back to the original project.

---

## 🧪 Example Real-Life Git + GitHub Workflow

```bash
# Step 1: Clone repo
git clone https://github.com/username/DevOps-Journey.git
cd DevOps-Journey

# Step 2: Create branch
git checkout -b feature-docker-setup

# Step 3: Add and commit
git add .
git commit -m "Added Docker setup"

# Step 4: Push to remote
git push origin feature-docker-setup

# Step 5: Open GitHub → Create Pull Request
# Step 6: Reviewer merges PR → Updates main branch

# Step 7: Sync your local main branch
git checkout main
git pull origin main
```

---

## 📊 Git and GitHub Workflow Diagram (Markdown Representation)

```text
Local Repo              Remote Repo (GitHub)
-----------              --------------------
| Working Dir |  -->  git add -->  Staging Area
                  -->  git commit -->  Local Repo
                  -->  git push -->  Remote Repo
                  <--  git pull <--  Sync updates
```

---

## ⚙️ Common Git and GitHub Commands

| Task | Command |
|------|----------|
| Initialize repo | `git init` |
| Clone remote repo | `git clone <repo-url>` |
| Add files | `git add .` |
| Commit changes | `git commit -m "Message"` |
| Create branch | `git branch <branch>` |
| Switch branch | `git checkout <branch>` |
| Merge branch | `git merge <branch>` |
| Push changes | `git push origin <branch>` |
| Pull latest | `git pull origin <branch>` |
| Check status | `git status` |
| View history | `git log --oneline --graph --decorate --all` |

---

## 🧠 GitHub Best Practices for DevOps Projects

1. Always create a **README.md** for every repository.
2. Use **meaningful commit messages**.
3. Use **branch naming conventions** like `feature/`, `fix/`, `release/`.
4. Use **Pull Requests** for collaboration.
5. Regularly **sync your local branch** with `main`.
6. Protect the `main` branch using **branch protection rules**.
7. Automate builds and tests using **GitHub Actions**.
8. Document workflows clearly for teammates.

---

## 🔐 Example Protected Workflow

```text
main (protected branch)
   ↑
   │  ← Pull Request reviewed and approved
feature/login
```

Only approved PRs can be merged into the main branch, ensuring stability and quality.

---

## 🧭 Summary

The **Git + GitHub workflow** forms the foundation of every DevOps pipeline.  
It enables:
- Safe and efficient code collaboration  
- Seamless version tracking  
- Automated testing and deployment via CI/CD  

Mastering this workflow makes you **industry-ready** for any DevOps or software engineering role 🚀

---

📘 Author: *Divesh Tayade*  
🎯 Part of My DevOps Learning Journey*  
🗓️ October 2025
