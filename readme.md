# Aether X6100

A project to build a Linux kernel and OS for the Xiegu X6100 without having to
copy files from the vendor's kernel.

## Building

To build, just:

```shell
.\br_build.sh
```

And then you'll have a `sdcard.img` in the `build` directory, you can then
flash.

## Changing configurations

If you want to change the Buildroot configuration, first do this:

```shell
.\br_make.sh menuconfig
```

And the menu configuration will open. Do your changes, save, and exit.
Then, to save the configurations, do:

```shell
cd build; make savedefconfig; cd ..
```

> :warning: You **can't** just make `.\br_make.sh savedefconfig` because it will override
your changes!

### U-boot and Linux kernel configurations

For those you can just:

```sh
.\br_make.sh uboot-menuconfig
# or
.\br_make.sh linux-menuconfig
```

and:

```sh
.\br_make.sh uboot-savedefconfig
# or
.\br_make.sh linux-savedefconfig
```

to save.

## Dockerfile and VSCode

You can have a nice development environment, including developing on windows,
you can use the included Docker stuff.
If you open the repository directory with Visual Studio Code, it'll ask you if
you want to reopen the directory in the container.
Say yes, and you'll have a development environment fully configured.
