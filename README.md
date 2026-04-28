# ⚡ VimForTheWin

A goated Neovim + Vim keybinding setup for VS Code and Visual Studio.


## 🛠️ Setup Commands For Future Me

### 🔄 Install PowerShell

```bash
winget install Microsoft.PowerShell
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

#### 📽️ FFmpeg
```bash
winget install -e --id Gyan.FFmpeg
```

#### 💬 Discord

```bash
winget install --id Discord.Discord --source winget
```

#### 📝 Visual Studio Code

```bash
winget install --id Microsoft.VisualStudioCode --source winget
```

# 📽️ FFmpeg Quick Scripts

A handy reference of go-to FFmpeg commands for fast, command-line video editing. 

### 🎞️ Join Videos (Lossless)
Quickly merge multiple video files into a single output

```bash
ffmpeg -f concat -safe 0 -i input.txt -c copy output.mkv
```
### ⏩ Speed Up Video & Audio (4x)

Increase the playback speed of a video by 400%.

```bash
ffmpeg -i input.mkv -filter_complex "[0:v]setpts=0.25*PTS[v];[0:a]atempo=2.0,atempo=2.0[a]" -map "[v]" -map "[a]" output.mkv
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

1. **Install the Extension Vim** in the Extensions marketplace.

2. **Copy Settings** Copy the settings from
   ```
   VimForTheWin/VisualStudioSettings/VSCodeVimSettings.json
   ```
3. **Open Settings (JSON)** * Press `Ctrl` + `Shift` + `P`.
   * Type `Open User Settings (JSON)` and select it.
   * Paste the settings there
   

