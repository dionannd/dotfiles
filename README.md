### Personal Dotfiles

My Ubuntu setup dotfiles

### Setup Terminal

- zsh :
  ```shell
  sudo apt install zsh
  chsh -s $(which zsh)
  ```

- Oh-My-Zsh :
  ```shell
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

- Plugin for zsh :
  ```shell
  # zsh-completion
  $ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

  # zsh-syntax-highlighting
  $ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

  # zsh-autosuggestions
  $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # zsh-history-substring-search
  $ git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
  ```

### Theme Terminal

Install Starship prompt :
```
$ sh -c "$(curl -fsSL https://starship.rs/install.sh)" 
$ mkdir -p ~/.config && touch ~/.config/starship.toml
```


