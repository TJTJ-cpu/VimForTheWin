# ⚡ VimForTheWin

A goated Neovim + Vim keybinding setup for VS Code and Visual Studio.


## 🛠️ Setup Commands For Future Me

### 🔄 Upgrade PowerShell

```bash
winget upgrade --id Microsoft.PowerShell --source winget
```

### 📦 Install Essentials

#### 🔧 Git

```bash
winget install --id Git.Git --source winget
```
#### 🎮 Steam
```bash
winget install --id Valve.Steam --exact
```
#### 🐍 Python

```bash
winget install Python.Python
```

#### 💬 Discord

```bash
winget install --id Discord.Discord --source winget
```

#### 📝 Visual Studio Code

```bash
winget install --id Microsoft.VisualStudioCode --source winget
```


## 🧭 Configuration Locations

### ✅ VS Code Vim (`vscodevim`)

1. Install the **Vim** extension by `vscodevim`.
2. Open `settings.json`:
   - Press `Ctrl+Shift+P` → select `Preferences: Open Settings (JSON)`
3. Copy contents from:
   ```
   VimForTheWin/VSCodeSettings/settings.json
   ```
4. Paste into:
   ```
   C:\Users\<YourName>\AppData\Roaming\Code\User\settings.json
   ```

### ✅ Visual Studio (VsVim)

1. Install the **VsVim** extension.
2. Copy `_vsvimrc` from:
   ```
   VimForTheWin/VisualStudioSettings/_vsvimrc
   ```
3. Place it at:
   ```
   C:\Users\<YourName>\_vsvimrc
   ```
   Or define a custom path in Visual Studio’s VsVim options.

4. Reload config inside Visual Studio by running:
   ```
   :source $VIMRC
   ```

## 🧠 Reminder

This repo is for personal productivity across:

- Neovim
- Visual Studio Code (VSCodeVim)
- Visual Studio (VsVim)

