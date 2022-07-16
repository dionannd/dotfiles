## Dion's Dotfiles

My Personal Ubuntu terminal setup dotfiles, for Neovim editor setup [here](https://github.com/dionannd/neovim-config) <br />
![Screenshots](https://github.com/dionannd/dotfiles/blob/starship/image/screenshot-022-02-20%2023-01-40.png)

### Setup Terminal

- zsh :
  ```bash
  $ sudo apt install zsh 
  $ chsh -s $(which zsh)
  ```

- Oh-My-Zsh :
  ```bash
  $ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

- Plugin for zsh :
  ```bash
  # zsh-completion
  $ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

  # zsh-syntax-highlighting
  $ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

  # zsh-autosuggestions
  $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # zsh-history-substring-search
  $ git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
  ```

### Setup Theme

Install Starship prompt :
```bash
$ sh -c "$(curl -fsSL https://starship.rs/install.sh)" 
$ mkdir -p ~/.config && touch ~/.config/starship.toml
```

### Setup Color LS (for icons in terminal)

1. Install Ruby (preferably, version >= 2.5)
2. [Download](https://www.nerdfonts.com/font-downloads) and install a Nerd Font. look [Nerd Font README](https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md)installation instructions. <br/>
  **Note:** for `HyperJS` users - Please add `"Hack Nerd Font"` font as an option to `fontFamily` 
3. Install colorls ruby gem with `gem install colorls` <br />
  <i>Note for `rbenv` users - In case of load error when using `lc`, please try the below patch.</i> <br/>
  
    ```ruby
    rbenv rehash
    rerhash
    ```
4. Look configuretion at [Recommended configuration](https://github.com/athityakumar/colorls#recommended-configurations) or [Custom configuration](https://github.com/athityakumar/colorls#custom-configurations)
