# nijiexpose DevTest Builds

This is not an official build of nijiexpose. I use this system to check on the latest updates and to test new patches.
Don't expect any warranty or support if you use the generated builds from this repository.
For normal supported usage, please get a supported official version from the [nijiexpose repository](https://github.com/nijiexpose/nijiexpose).

## Installation

You can get the latest builds from the [release section](https://github.com/grillo-delmal/nijiexpose-devtest/releases/tag/nightly).

Linux builds of this repository are also provided through the [nijilive Flatpak DevTest](https://github.com/grillo-delmal/nijilive-flatpak-devtest) repo.

```sh
flatpak remote-add grillo-nijilive oci+https://grillo-delmal.github.io/nijilive-flatpak-devtest
flatpak install grillo-nijilive io.github.grillo_delmal.nijiexpose
```

## Tips

### Local building flatpak version on Linux

```sh
flatpak-builder build-dir io.github.grillo_delmal.nijiexpose.yml --force-clean
```

### Debugging in Linux

You can also install debug symbols.

```sh
flatpak install grillo-nijilive io.github.grillo_delmal.nijiexpose.Debug
```

And with that you will be able to debug it with gdb as [any other flatpak app](https://docs.flatpak.org/en/latest/debugging.html).

```sh
flatpak run --command=sh --devel io.github.grillo_delmal.nijiexpose
gdb --ex 'r' /app/bin/nijiexpose
```
### Debugging in Windows

Download [WinDbg](http://www.windbg.org/) and the source code from the [release section](https://github.com/grillo-delmal/nijiexpose-devtest/releases/tag/nightly)... you can figure out the rest from there.
