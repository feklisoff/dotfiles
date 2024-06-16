# DOTFILES
This repository is set up to keep track of all my configuration files, at least the ones, that are safe to be publicly available.

Additionally, I have a file `mac-dev-setup.sh` that could be executed to install a bunch of applications, if you're just setting up your mac.

## How to use
I personally keep these files in the `~/.config/` folder, and see no reason why you shouldn't either.

Go to your favourite terminal emulator and run:
```
cd
mkdir .config
cd .config
git clone git@github.com:feklisoff/dotfiles.git .
```

This will fetch all the configs and throw them into your new (or old idk) .config folder. You can then delete any references to git (.git/*, .gitignore). Now these configs are fully yours!

To install a bunch of apps run:
```
./mac-dev-setup.sh
```

> [!WARNING]
> Please go over the setup file prior to running the command to make sure you're happy with what it will do.
> I do not accept any responsibility for your actions.
