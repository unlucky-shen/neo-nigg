# Neo-nigg (get neovim up and running on Windows/Linux)

## Pre-Requisites for Windows

### Using Powershell

1. **Download Neovim,** 

```Powershell
winget install Neovim.Neovim
```

1. **git (for lazy.nvim),**

```Powershell
winget install Git.Git
```

2. **Node.js (for treesitter, lsp servers)**

```Powershell
winget install OpenJS.NodeJS.LTS
```

3. **Python Tools (for some plugins)**

```Powershell
winget install Python.Python.3.xx

python -m pip install --upgrade pip

pip install pynvim
```

4. **MinGW**

     * https://winlibs.com/#download-release
     * Add bin folder to PATH

5. **CMake (for some debuggers)**

```Powershell
winget install Kitware.CMake
```

6. **Optional Stuffs,**

```Powershell
winget install BurntSushi.ripgrep.MSVC

winget install fzf

winget install 7zip.7zip
```

