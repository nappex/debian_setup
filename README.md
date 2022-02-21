# Debian Init Setup
Reproducable setup to every debian bullseye.

This repo is suitable when you reinstall your distro and need to keep environemnt from the old installation.

In future I'd like to add installation/uninstallation script which will ensure to setup the environment automatically.

I will try to explain every step which was necessary to create this configuration. So newbie should be able to update his configuration by his the gusta!

# SHELL
The configuration is setup and tested on `bash`.

## How customize your bash
Customize look of your bash prompt with emoji

emoji can be found on this URL https://emojipedia.org/. Just copy and paste your choosed emoji

To customize your bash is necessary update your system variable PS1.

You can check value of this variable
```bash
$ echo $PS1
```

## Update variable PS1
You can change value of variable PS1 without to affect your system configuration.

```bash
$ export PS1="\u@\h > "
```
When you exit your terminal session your configuration is lost forever. But for trying different looks is fine way to customize.


## Update .bashrc file
If we want to ensure permanent result look of our prompt, we need to edit our `.bashrc` file.
This file should be located on path: `~/.bashrc`

When you are happy with appearance of your bash prompt. Save your code at the end of `.bashrc` file.

## Use my appearance
If you are not sure how to customize PS1, just copy code in `.bashrc` file uploaded in this repo and append to your `.bashrc`.

To appear your new customization, is neede to reload your configuration.

```bash
$ source ~/.bashrc
```

### git branch parser
In code of this repo is defined function `parse_git_branch`. Function call command `git branch` and parse the output of branches with command `sed`.
`stderr` is directed to `null`.

### emoji
There is added emoji in git part for better readability as sign of two arrows. The sign is at the end of `sed` command.

## Tests
Appearance of bash prompt was test on Debian.

## Useful links
If you like to learn how to customize looks of your bash, check links below.

1. https://tynick.com/blog/06-12-2019/how-to-change-your-ps1-bash-prompt-and-add-emojis/
2. http://jafrog.com/2013/11/23/colors-in-terminal.html
