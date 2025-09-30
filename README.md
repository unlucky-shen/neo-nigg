# Neo-nigg (get neovim up and running on Windows/Linux)

## Pre-Requisites for Windows

### Using Powershell

1. **Download Neovim,**

    `winget install Neovim.Neovim`

1. **git (for lazy.nvim),**

   `winget install Git.Git`

2. **Node.js (for treesitter, lsp servers)**

    `winget install OpenJS.NodeJS.LTS`

3. **Python Tools (for some plugins)**

    `winget install Python.Python.3.xx` -- check for latest

    `python -m pip install --upgrade pip`

    `pip install pynvim`

4. **MinGW**

     * https://winlibs.com/#download-release
     * Add bin folder to PATH

5. **CMake (for some debuggers)**

    `winget install Kitware.CMake`

6. **Optional Stuffs,**

    `winget install BurntSushi.ripgrep.MSVC`

    `winget install fzf`

    `winget install 7zip.7zip`


