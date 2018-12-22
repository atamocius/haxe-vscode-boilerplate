# haxe-vscode-boilerplate

A barebones boilerplate for Haxe in VS Code. Install the [Haxe extension] to get the most out of this boilerplate.

## Debugging

This boilerplate includes launch configurations for debugging with the following debuggers:

- JS (Node)
- Flash

### JS (Node)

VS Code already has built-in support for debugging with Node. Just make sure to install the [Node JS runtime](https://nodejs.org).

### Flash

You need to have the [Flash Debugger extension](https://marketplace.visualstudio.com/items?itemName=vshaxe.haxe-debug) for VS Code installed.

## Unit Tests

It is configured to use [utest](https://github.com/haxe-utest/utest) for unit tests. Debugging support for unit tests is also available.

## Configuration

### `./build.hxml`

The `build.hxml` at the root is just for the _Haxe completion server_ utilized by the [Haxe extension], hence, it only contains `-lib` commands. This file informs VS Code auto-completion which libraries are in use.

### `./config/build.hxml` and `./config/build-tests.hxml`

The `config` folder contains the main configuration for the application and unit test builds. It primarily contains the class path (`-cp`) and main class (`-main`) commands since these commands are shared among the different build targets. Specific dependencies for each definition (`-lib`) that will be used to build the application and unit tests should also be placed here.

### `.vscode/tasks.json`

The target specific compilation switches are declared in `tasks.json`.

## Coding Convention

The conventions used in this boilerplate are specific to my own tastes and are clearly a bit far from the norm. If you have installed the [Haxe extension], you can easily configure this by modifying the `hxformat.json` file at the root.

You can find instructions on how to configure formatting [here](https://github.com/vshaxe/vshaxe/wiki/Formatting). Further details about the full schema of `hxformat.json` can be found [here](https://github.com/vshaxe/vshaxe/blob/master/schemas/hxformat-schema.json).

[haxe extension]: https://marketplace.visualstudio.com/items?itemName=nadako.vshaxe
