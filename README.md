# Homebrew Tap

Homebrew formulae and casks for schovi's tools.

## Installation

Install directly from the tap:

```bash
brew install schovi/tap/shelli
brew install schovi/tap/mcpainless
brew install --cask schovi/tap/git-treehouse
```

Or tap once, then install by package name:

```bash
brew tap schovi/tap
brew install shelli
brew install mcpainless
brew install --cask git-treehouse
```

## Packages

| Package | Type | Repository | Description |
| --- | --- | --- | --- |
| `shelli` | Formula | [schovi/shelli](https://github.com/schovi/shelli) | Persistent interactive shell sessions via PTY |
| `mcpainless` | Formula | [mcpainless.com](https://mcpainless.com) | Local manager and proxy for remote MCP servers |
| `git-treehouse` | Cask | [schovi/git-treehouse](https://github.com/schovi/git-treehouse) | TUI for managing Git worktrees |

The `git-treehouse` cask installs both `git-treehouse` and the shorter `gth` command.
