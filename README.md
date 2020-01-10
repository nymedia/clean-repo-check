# clean-repo-check
Simple check to make sure a repo is clean. Useful in CI environments, and for automatic updates

## Installation

You probably want to install this as a dev dependency. So for php projects:

```sh
composer require --dev nymedia/clean-repo-check
```

## Usage

```sh
/bin/sh ./path/to/clean-repo-check.sh
```

This will exit with status 1 if your repo has either

- Changed files
- Uncommited files

It will also print git status, so it can help you fix the issues.
