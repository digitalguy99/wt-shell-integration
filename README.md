# wt-shell-integration
Plugins to enable shell integration on Windows Terminal for various shells

## Table of Contents
- [About wt-shell-integration plugin](#wt-shell-integration)
- Installing the plugin
  - [zsh](#zsh)
    - [oh-my-zsh](#oh-my-zsh)
  - [PowerShell](#powershell)

## zsh
If you have `oh-my-zsh`, go [here](#oh-my-zsh). Otherwise:
1. Run the following command:
    ```zsh
    curl https://raw.githubusercontent.com/digitalguy99/wt-shell-integration/main/oh-my-zsh/wt-shell-integration/wt-shell-integration.plugin.zsh >> ~/.zshrc
    ```

2. Reload your zsh configuration:
    ```zsh
    . ~/.zshrc
    ```

### oh-my-zsh
1. Run the following command:
    ```zsh
    curl -L https://api.github.com/repos/digitalguy99/wt-shell-integration/tarball/main | tar -xz --wildcards --strip=3 --one-top-level=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/wt-shell-integration '*/oh-my-zsh/wt-shell-integration/*'
    ```

2. Add to plugin in `~/.zshrc`

3. Reload zsh configuration:
    ```zsh
    . ~/.zshrc
    ```

## PowerShell
1. Run PowerShell as Administrator.

2. Install the module:
    ```pwsh
    Install-Module wt-shell-integration -AllowClobber
    ```

3. Run the following:
    ```pwsh
    Import-Module wt-shell-integration; ac $profile "`nImport-Module wt-shell-integration" -encoding utf8 -nonewline
    ```