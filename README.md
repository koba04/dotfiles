# my dotfiles management repository

```
% sh setup.sh
```

## ghq & peco

```
% brew install ghq
% brew install peco
```

## vim

```
% curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
```

## VSCode

```
% sh setup-vscode.sh
```

* Install extensions

```
cat .vscode/extensions.txt | xargs -n 1 code --install-extension
```

* Save extensions

```
code --list-extensions > .vscode/extensions.txt
```

## Atom Editor

```
% apm stars --install
```
