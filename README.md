# wt-shell-integration
Plugins to enable shell integration on Windows Terminal for various shells

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

3. jReload zsh configuration:
    ```zsh
    . ~/.zshrc
    ```