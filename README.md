# my dotfiles management repository

```
% cd
% mkdir -p repos/github.com/koba4
% cd repos/github.com/koba04
% git clone git@github.com:koba04/dotfiles.git
% sh setup.sh
```

## Node & (Ruby)

```
% brew install nodenv
# if you need
% brew install rbenv
```

## ghq & peco

```
% brew install ghq
% brew install peco
```

You can use ghq + peco through `repo` command.

## direnv

```
% brew install direnv
```

## vim

```
% curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
```

## VSCode

```
% sh setup-vscode.sh
```

* Install `code` command from VSCode

* Install extensions

```
cat .vscode/extensions.txt | xargs -n 1 code --install-extension
```

* Save extensions

```
code --list-extensions > .vscode/extensions.txt
```
