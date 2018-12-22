# haxe-vscode-boilerplate

A barebones boilerplate for Haxe in VS Code. Install the [Haxe extension] to get the most out of this boilerplate.

> The sample code included uses new _Haxe 4.0.0_ language features.

## Motivation

I created this boilerplate as a way to quickly setup a Haxe coding environment.

Much of the tutorials/instructions on setting up one's development environment focus on Haxe's specific use cases. There are instructions to get up and running quickly but usually lack instructions on how to setup debugging, especially on VS Code.

This boilerplate's setup is focused on getting an environment up that focuses more on the language. This is mainly useful for beginners or to just quickly try out some idea or piece of code.

## Debugging

Launch configurations for the following debuggers are included:

- JS (Node)
- Flash

### JS (Node)

VS Code already has built-in support for debugging with Node. Just make sure to install the [Node JS runtime](https://nodejs.org).

### Flash

You need to have the [Flash Debugger extension](https://marketplace.visualstudio.com/items?itemName=vshaxe.haxe-debug) installed.

## Unit Tests

It is configured to use [utest](https://github.com/haxe-utest/utest). Debugging support for unit tests is also available.

> Since [_Haxe 4.0.0-preview.2_](https://haxe.org/download/version/4.0.0-preview.2/), `haxe.unit` has been moved to `hx3compat`. Instead of using `hx3compat`, I have opted to use `utest`. Moving to a different unit testing library only means updating dependencies (`-lib`) in the root `build.hxml` and `config/build-tests.hxml` files.

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

> You also have to modify `.editorconfig` if you want to change the use of space to tabs and also to change the indent size.

[haxe extension]: https://marketplace.visualstudio.com/items?itemName=nadako.vshaxe
