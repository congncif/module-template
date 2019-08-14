# Xcode templates

Generate base files of [`IDMCore`](https://github.com/congncif/IDMCore) &amp; [`ModuleX`](https://github.com/congncif/ModuleX) automatically.

## Requirements

* Xcode 10+
* Swift 4.2+

## Installation

* Clone this repo.
* Open Terminal, run command: ```./install-template.sh```

Now you can use the templates by add a new file.

## Usage

***Using ModuleX template***

While `Storyboard Segue & Dependency Bridge` template is most convenience using for routing between modules in an internal `Package` | `Bundle`, `default` template is most independent and flexible for integrating with other modules in external `Packages` | `Bundles`.

A best practice is combining both templates depending on the specific use case.
