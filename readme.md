# Aether X6100

A project to build a Linux kernel and OS for the Xiegu X6100 without having to
copy files from the vendor's kernel.

## Building

### Building on Linux

To build on a Linux machine, just:

```shell
.\br_build.sh
```

And then you'll have a `sdcard.img` in the `build` directory, you can then
flash.

#### Buildroot dependencies

If you are indeed using Linux, check the pre-requesites of Buildroot
[here](https://buildroot.org/downloads/manual/manual.html#requirement).

### Building on other OSes

The recomended way of building this repo on other systems is using Docker, as
described below.

## Changing buildroot configurations

If you want to change the Buildroot configuration, first do this:

```shell
./br_make.sh menuconfig
```

And the menu configuration will open. Do your changes, save, and exit.
Then, to save the configurations, do:

```shell
cd build; make savedefconfig; cd ..
```

> :warning: You **can't** just make `./br_make.sh savedefconfig` because it will override
your changes!

### Changing U-Boot and Linux kernel configurations

For those you can just:

```sh
./br_make.sh uboot-menuconfig
# or
./br_make.sh linux-menuconfig
```

and:

```sh
./br_make.sh uboot-savedefconfig
# or
./br_make.sh linux-savedefconfig
```

to save.

### Other useful recipes

If you change the `boot.cmd` file, then you have to run:

```sh
./br_make.sh host-uboot-tools-rebuild; ./br_build.sh
```

[source](https://stackoverflow.com/questions/66116553/boot-scr-rebuild-in-buildroot)


## Dockerfile and VSCode (cross-platform development)

You can have a nice development environment, including developing on Windows,
you can use the included Docker setup.
You'll need [Visual Studio Code](https://code.visualstudio.com/) and
[Docker](https://www.docker.com/) installed (on Windows machines, Docker
requires [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install)),
and the proper extensions for VSCode: the
[remote development pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack), and the
[docker support
extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker).

With this configured, if you open the repository directory with VSCode, it'll
ask you if you want to reopen the directory in the container.
Say yes, and you'll have a development environment fully configured.
Use the integrated terminal from VSCode and you'll have a Linux terminal ready
for you.
