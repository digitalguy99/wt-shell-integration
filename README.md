# wt-shell-integration
Plugins to enable shell integration on Windows Terminal for various shells

## Table of Contents
- [About wt-shell-integration plugin](#wt-shell-integration)
- Installing the plugin
  - [zsh](#zsh)
    - [oh-my-zsh](#oh-my-zsh)
  - bash
    - [oh-my-bash](#oh-my-bash)
  - [PowerShell](#powershell)

## zsh
If you have `oh-my-zsh`, go [here](#oh-my-zsh). Otherwise:
1. Run the following command:
    ```zsh
    curl -s "https://raw.githubusercontent.com/digitalguy99/wt-shell-integration/main/oh-my-zsh/wt-shell-integration.plugin.zsh" | sed -n '/PROMPT=/s/^[ \t]*//p' >> ~/.zshrc
    ```

2. Reload your zsh configuration:
    ```zsh
    . ~/.zshrc
    ```

### oh-my-zsh
1. Run the following command:
    ```zsh
    curl -L https://api.github.com/repos/digitalguy99/wt-shell-integration/tarball/main | tar -xz --wildcards --strip=2 --one-top-level=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/wt-shell-integration '*/oh-my-zsh/*'
    ```

2. Add to plugin in `~/.zshrc`

3. Reload zsh configuration:
    ```zsh
    . ~/.zshrc
    ```

## bash
### oh-my-bash
1. Run the following command:
    ```bash
    curl -kL https://api.github.com/repos/digitalguy99/wt-shell-integration/tarball/main | tar -xz --wildcards --strip=2 --one-top-level=${BASH_CUSTOM:-~/.oh-my-bash/custom}/plugins/wt-shell-integration '*/oh-my-bash/*'
    ```
2. Add to plugin in `~/.bashrc`
   
3. Reload bash configuration:
    ```bash
    . ~/.bashrc
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