# DDEV Switch Project

A simple Bash script to switch to a DDEV project directory, shut down all DDEV projects, start the selected one, and optionally enter the container via `ddev ssh`.

## 🧩 What it does

Given a project directory as an argument, this script will:

1. Run `ddev poweroff` to stop all DDEV containers.
2. Change into the given project directory.
3. Start the DDEV project.
4. *(Optional)* Enter the container with `ddev ssh` if `--ssh` is provided.

---

## ❗ Requirements

* DDEV installed and configured
* Bash shell
* Project directory must contain a valid .ddev config

---

## 🛠️ Installation

### 1. Clone the repository or copy the script:
```bash
git clone https://github.com/pt1602/ddev-switch-project.git
```

### 2. Make the script executable:
```bash
chmod +x ddev-switch-project/switch-project.sh
```

### 3. Create a symlink to make it globally accessible:
```bash
sudo ln -s /full/path/to/switch-project/switch-project.sh /usr/local/bin/switch-project
```

---

## 🚀 Usage

```bash
switch-project /path/to/your/project [--ssh]
```

---

### Examples

Start a project only:
```bash
switch-project ~/path/to/your/project
```

Start a project and **enter its container**:
```bash
switch-project ~/path/to/your/project --ssh
```

---

## 📝 License
MIT – free to use, share, and modify.

