# Ignitr

Getx template for [Igntir Framework](https://github.com/ignitr-dev/ignitr_cli)

## Introduction

Ignitr is a simple yet powerful flutter mini framework, designed to simplify the development of Flutter applications. It provides a set of tools and utilities to streamline the process of building Flutter apps, making it easier for developers to create high-quality, feature-rich applications. Ignitr is designed to be flexible and customizable, allowing developers to tailor it to their specific needs. It is highly inpired by the other `MVC` frameworks like [Laravel](https://laravel.com) and [CodeIgniter](https://www.codeigniter.com).

## Getting Started

```shell
dart pub global activate ignitr_cli
```

This command will install the `ignitr` cli globally in your system, now you can use the built in Ignitr commands to get started with your project development.

Checkout the Ignitr CLI on: [GitHub](https://github.com/ignitr-dev/ignitr_cli), [pub.dev](https://pub.dev/packages/ignitr_cli)

## Usage

### Create new Ignitr Project

```shell
ignitr create <project_name>
```

- _<project_name>_: This will be the project name you want to generate, keep the project name in `lower_snake_case` as per flutter's recommendation.

## Highlights

Here are some fantastic features you’ll get by default when scaffolding your project with this starter template:

- **MVC Pattern**: The project follows the `MVC` pattern, which separates logic, UI, and models for better manageability.
- **Modular Structure**: The modular structure allows developers to reuse modules across different projects, offering greater flexibility and scalability.
- **Module Generator**: A simple module generator tool has been added, enabling you to generate any module with a single command.
- **Persistent/Reactive Stores**: It has a layer called Stores, it is a reactive store you can use for reactive data of your application, it also comes with persistent feature so even if your app is closed the stored data will remain.

### Further Documentation

Please refer to the **[Ignitr Documentation](https://ignitr.devsbuddy.com)** for more detailed information and examples on how to use Ignitr.
