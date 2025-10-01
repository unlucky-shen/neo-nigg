# Neovim Stuffs

### Pre-Requisites for Windows

**Using Powershell,**

1. **Download Neovim,** 

```Powershell
winget install Neovim.Neovim
```

2. **git (for lazy.nvim),**

```Powershell
winget install Git.Git
```

3. **Node.js (for treesitter, lsp servers)**

```Powershell
winget install OpenJS.NodeJS.LTS
```

4. **Python Tools (for some plugins)**

```Powershell
winget install Python.Python.3.xx

python -m pip install --upgrade pip

pip install pynvim
```

5. **MinGW**

     * https://winlibs.com/#download-release
     * Add bin folder to PATH

6. **CMake (for some debuggers)**

```Powershell
winget install Kitware.CMake
```

7. **Optional Stuffs,**

```Powershell
winget install BurntSushi.ripgrep.MSVC

winget install fzf

winget install 7zip.7zip
```

