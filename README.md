# SOLID Principles with Dart

A practical and beginner-friendly repository demonstrating the five SOLID principles using Dart. Each principle is organized into its own folder with a clear example that shows how to apply the design concept in real-world software development.

## Why this repository?

SOLID is a set of five design principles that help developers write code that is:

- easier to maintain
- easier to extend
- less fragile
- more testable
- better aligned with object-oriented design best practices

This repository is designed to help Dart developers understand these principles through simple, focused examples rather than abstract theory alone.

## The Five SOLID Principles

- Single Responsibility Principle (SRP)
  - A class should have one reason to change.

- Open/Closed Principle (OCP)
  - Software entities should be open for extension but closed for modification.

- Liskov Substitution Principle (LSP)
  - Subtypes must be substitutable for their base types without breaking the system.

- Interface Segregation Principle (ISP)
  - Clients should not be forced to depend on methods they do not use.

- Dependency Inversion Principle (DIP)
  - High-level modules should not depend on low-level modules; both should depend on abstractions.

## Repository Structure

```text
SOLID-Principles-with-Dart/
├── srp/
├── ocp/
├── lsp/
├─��� isp/
├── dip/
├── README.md
└── .DS_Store
```

Each folder contains examples for a specific SOLID principle.

## Prerequisites

Before running the examples, make sure you have:

- Dart SDK installed
- A code editor such as VS Code
- Basic understanding of Dart classes and object-oriented programming

## Getting Started

1. Clone the repository:

```bash
git clone https://github.com/iemtiyaz-tharwat/SOLID-Principles-with-Dart.git
```

2. Navigate into the project directory:

```bash
cd SOLID-Principles-with-Dart
```

3. Open any principle folder and run the Dart example:

```bash
dart run
```

> If each folder contains a standalone Dart file, run it from that directory with the appropriate Dart command.

## Learning Approach

This project focuses on practical examples rather than heavy theory. Each example is intended to help you understand:

- the problem the principle solves
- what bad design looks like
- how a better design improves flexibility and maintainability

## Contribution

Contributions are welcome. If you would like to improve the examples, add explanations, or fix issues, feel free to open a pull request.

## Contact

For questions, suggestions, or collaboration opportunities, reach out through the repository's GitHub discussion or issue tracker.

## Summary

This repository serves as a clear reference for learning and applying SOLID principles in Dart. It is especially useful for developers who want to write cleaner, more maintainable, and more scalable code.
