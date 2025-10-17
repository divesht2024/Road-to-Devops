# 🐙 GitHub Basics – A Complete Guide for Beginners

GitHub is a **cloud-based version control platform** that helps developers collaborate, manage projects, and store code securely using **Git**.

This guide will take you through all the essential GitHub concepts and commands you need as part of your **DevOps learning journey**.

---

## 🧩 What is GitHub?

**GitHub** is a web-based platform that hosts Git repositories.  
It provides tools for:
- Version control
- Collaboration
- Code review
- Project management
- Continuous integration and deployment (CI/CD)

> 🔹 Git = tool for version control  
> 🔹 GitHub = cloud platform to host and manage Git repositories

---

## 🧠 Why Developers Use GitHub

| Benefit | Description |
|----------|--------------|
| 🧍 Collaboration | Multiple developers can work on the same project. |
| 💾 Backup | Cloud hosting ensures you never lose your code. |
| 📜 Version History | Track every change in your code. |
| 🔄 Pull Requests | Merge code safely after review. |
| 🚀 Integration | Works with CI/CD tools like Jenkins, GitHub Actions, etc. |
| 🏷️ Open Source | Share and contribute to public projects. |

---

## ⚙️ Setting Up GitHub

1. **Create an account** on [https://github.com](https://github.com)
2. **Install Git** on your system  
   ```bash
   sudo apt install git   # For Ubuntu/Linux
   git --version
   ```
3. **Configure Git with your credentials**
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your_email@example.com"
   ```

---

## 🏗️ Creating a Repository

A **repository (repo)** is a folder that contains your project and its version history.

### Steps to Create a Repository
1. Click **New Repository** on GitHub.
2. Enter a **name** (e.g., `DevOps-Journey`).
3. Choose:
   - Public or Private
   - Add a README (optional)
4. Click **Create Repository**

---

## 🔗 Connecting Local Repo to GitHub

### Step 1: Initialize Git in Local Folder
```bash
git init
```

### Step 2: Add Remote Repository
```bash
git remote add origin https://github.com/username/DevOps-Journey.git
```

### Step 3: Add and Commit Files
```bash
git add .
git commit -m "Initial commit"
```

### Step 4: Push Code to GitHub
```bash
git branch -M main
git push -u origin main
```

✅ Your project is now live on GitHub!

---

## 🔁 Common GitHub Workflow

| Step | Command | Description |
|------|----------|-------------|
| 1️⃣ | `git clone <repo-url>` | Copy a remote repo to your computer |
| 2️⃣ | `git branch <branch-name>` | Create a new branch |
| 3️⃣ | `git checkout <branch-name>` | Switch to the branch |
| 4️⃣ | `git add .` | Stage your changes |
| 5️⃣ | `git commit -m "Message"` | Save changes locally |
| 6️⃣ | `git push origin <branch>` | Push to GitHub |
| 7️⃣ | Create **Pull Request** on GitHub | Merge branch after review |

---

## 🧾 GitHub Terminology

| Term | Description |
|------|-------------|
| **Repository** | Project folder containing all files. |
| **Branch** | A copy of your project to work independently. |
| **Commit** | A snapshot of changes made to files. |
| **Pull Request (PR)** | Request to merge one branch into another. |
| **Fork** | Copy of someone else’s repo for your own use. |
| **Clone** | Download a remote repo to your computer. |
| **Merge** | Combine changes from one branch into another. |
| **Issues** | Used to track bugs, enhancements, and tasks. |
| **Actions** | Automation tools for CI/CD pipelines. |
| **README.md** | Main file that describes your project. |

---

## 🧠 Understanding Pull Requests

Pull Requests (PRs) are a key GitHub feature for collaboration.

**Steps:**
1. Create a branch → `feature/login`
2. Push branch to GitHub → `git push origin feature/login`
3. Go to GitHub → Click **Compare & Pull Request**
4. Add a title and description
5. Click **Create Pull Request**
6. Reviewer checks and merges your changes into `main`

---

## 🧰 Managing Files on GitHub

### Upload a File
- On GitHub → Go to your repo → Click **Upload files** → Commit.

### Delete a File
```bash
git rm filename.txt
git commit -m "Removed unnecessary file"
git push origin main
```

### Rename or Move a File
```bash
git mv oldname.txt newname.txt
git commit -m "Renamed file"
git push origin main
```

---

## 🔐 Working with SSH Keys

Using SSH makes pushing/pulling secure.

### Generate SSH Key
```bash
ssh-keygen -t rsa -b 4096 -C "youremail@example.com"
```

### Add Key to GitHub
- Copy content of `~/.ssh/id_rsa.pub`
- Go to **GitHub → Settings → SSH and GPG Keys → New SSH key**
- Paste your key

---

## 🧩 Forking and Cloning Repositories

### Forking
Used to make your own copy of a public repository.

**Steps:**
1. Click **Fork** on the repo page.
2. Edit and experiment freely.

### Cloning
Download a repo to your local machine.
```bash
git clone https://github.com/username/repo-name.git
```

---

## 🧪 Example GitHub Workflow for DevOps Project

```bash
# Step 1: Clone the project
git clone https://github.com/username/DevOps-Journey.git
cd DevOps-Journey

# Step 2: Create a new branch
git checkout -b feature-docker-setup

# Step 3: Make changes and commit
git add .
git commit -m "Added Docker setup for CI pipeline"

# Step 4: Push to remote
git push origin feature-docker-setup

# Step 5: Create a pull request on GitHub
# (done via GitHub website)
```

---

## 🚀 GitHub Actions (Introduction)

GitHub Actions helps automate workflows such as:
- Running tests automatically
- Deploying applications
- Triggering CI/CD pipelines

### Example Workflow File `.github/workflows/deploy.yml`
```yaml
name: Deploy App

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 18

      - name: Install dependencies
        run: npm install

      - name: Run tests
        run: npm test
```

---

## 🧭 Tips for Maintaining a GitHub Repo

1. Always write a **README.md** file.
2. Add a **.gitignore** to exclude unwanted files.
3. Use **meaningful commit messages**.
4. Update your repo regularly.
5. Use **branches** for new features.
6. Use **issues and pull requests** for collaboration.
7. Pin important repositories on your GitHub profile.
8. Add **LICENSE.md** if your project is public.

---

## 📚 Sample `.gitignore` File

```gitignore
# Node.js
node_modules/
.env

# Python
__pycache__/
*.pyc

# Logs
*.log

# OS Files
.DS_Store
Thumbs.db
```

---

## 📘 Example Folder Structure for a GitHub DevOps Project

```text
DevOps-Journey/
│
├── README.md
├── GitHub_Basics.md
├── Branching_and_Merging.md
├── Common_Errors_and_Fixes.md
├── .gitignore
├── docker/
│   └── Dockerfile
├── scripts/
│   └── setup.sh
├── .github/
│   └── workflows/
│       └── deploy.yml
└── assets/
    └── images/
```

---

## 🧩 Summary

GitHub is the **foundation of collaboration in DevOps**.  
By mastering it, you can:
- Manage your projects efficiently  
- Work with teams globally  
- Automate deployments  
- And build a strong online portfolio 🚀  

---

📘 Author: Divesh Tayade 
🎯 Part of My DevOps Learning Journey
🗓️ October 2025
