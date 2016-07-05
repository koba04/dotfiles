# my dotfiles management repository

```
% sh setup.sh
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
cat .vscode/extensions.txt | xargs -n 1 code-insiders --install-extension
```

* Save extensions

```
code-insiders --list-extensions > .vscode/extensions.txt
```

## Atom Editor

```
% apm stars --install
```
