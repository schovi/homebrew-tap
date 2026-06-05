# Homebrew Tap

Homebrew formulae and casks for schovi's tools.

## Installation

Install directly from the tap:

```bash
brew install schovi/tap/shelli
brew install --cask schovi/tap/git-treehouse
```

Or tap once, then install by package name:

```bash
brew tap schovi/tap
brew install shelli
brew install --cask git-treehouse
```

## Packages

| Package | Type | Repository | Description |
| --- | --- | --- | --- |
| `shelli` | Formula | [schovi/shelli](https://github.com/schovi/shelli) | Persistent interactive shell sessions via PTY |
| `git-treehouse` | Cask | [schovi/git-treehouse](https://github.com/schovi/git-treehouse) | TUI for managing Git worktrees |

The `git-treehouse` cask installs both `git-treehouse` and the shorter `gth` command.
