# Ignitr - GetX

This is the template for the flutter's Ignitr Framework, it uses GetX stack.

## Introduction

Ignitr is a simple yet powerful flutter mini framework, designed to simplify the development of Flutter applications. It provides a set of tools and utilities to streamline the process of building Flutter apps, making it easier for developers to create high-quality, feature-rich applications. Ignitr is designed to be flexible and customizable, allowing developers to tailor it to their specific needs. It is highly inpired by the other `MVC` frameworks built with other technologies like [Laravel](https://laravel.com) and [CodeIgniter](https://www.codeigniter.com).

## Getting Started

```shell
dart pub global activate ignitr_cli
```

Above command will install the `ignitr` cli globally in your system, now you can use the built in Ignitr commands to get started with your project development.

Checkout the Ignitr CLI on: [GitHub](https://github.com/ignitr-dev/ignitr_cli), [pub.dev](https://pub.dev/packages/ignitr_cli)

## Usage

### Create new Ignitr Project

```shell
ignitr create <project_name>
```

- _<project_name>_: This will be the project name you want to generate, it will scaffold a fresh project with the name provided.

> **NOTE: Sometimes ignitr command doesn't work after activating it globally specially when using `Git Bash` for windows, To solve this issue use command as `ignitr.bat <commands>`, alternatively you can just add alias to your `~/.bashrc` file**

## Highlights

Here are some fantastic features you’ll get by default when scaffolding your project with this starter template:

- **MVC Pattern**: The project follows the `MVC` pattern, which separates logic, UI, and models for better manageability.
- **Modular Structure**: The modular structure allows developers to reuse modules across different projects, offering greater flexibility and scalability.
- **Module Generator**: A simple module generator tool has been added, enabling you to generate any module with a single command.
- **Persistent/Reactive Stores**: It has a layer called Stores, it is a reactive store you can use for reactive data of your application, it also comes with persistent feature so even if your app is closed the stored data will remain.

## Features

### Generate Module

Ignitr comes with the powerfull CLI tool to help you generate the modules.

#### How to use

1. `ignitr make:module <module_name>`: To generate a new module you can use this command, make sure to use the **`singular`** name of the module.
2. `ignitr make:page <page_name> --on=<module_name>`: This command will generate a new page and associated controller inside the specified module.

#### Example

```shell
ignitr make:module blog
```

_NOTE: Make sure to use the module names as singular name_

This will generate all the files required for a `Module`

#### Generated Files

```txt
📂 blog
├── 📂 controllers
│   └── 📄 blog_controller.dart
├── 📂 routes
│   ├── 📄 blog_router.dart
├── 📂 networks
│   ├── 📄 api_blog_client.dart
│   └── 📄 blog_client.dart
├── 📂 views
│   └── 📄 blog_page.dart
└── 📄 blog_module.dart
```

### Generate Page/View

```shell
ignitr make:page comment --on=blog
```

This will generate the new view/page (`comment_page.dart`) along with it's controller (`comment_controller.dart`) file inside the `blog` Module.

##### Generated files (including previously generated views)

```txt
📂 blog
├── 📂 controllers
│   ├── 📄 blog_controller.dart
│   └── 📄 comment_controller.dart
├── 📂 views
│   └── 📄 blog_page.dart
│   └── 📄 comment_page.dart
```

### Upcoming features

- **Stack Selection**: You can select the stack you want to use, such as GetX, Bloc or any other stack.
- **Tailwind**: The project will include Tailwind CSS inspired styling library for styling, providing a modern, responsive and unique look and feel to your application.

### Further Documentation

Please refer to the **[Ignitr Documentation](https://ignitr.devsbuddy.com)** for more detailed information and examples on how to use Ignitr.
