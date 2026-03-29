# Homebrew Tap

Personal [Homebrew](https://brew.sh) tap for formulae and casks.

## Installation

```sh
brew tap ojizero/tap
```

Then install any formula or cask:

```sh
brew install <formula>
brew install --cask <cask>
```

## Available Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [gofindup](https://github.com/ojizero/gofindup) | Find up utility implemented in Go | 1.1.3 |
| [gomakehelp](https://github.com/ojizero/gomakehelp) | Simple wrapper for Mmake's help functionality | 1.0.0 |

## Available Casks

| Cask | Description | Version |
|------|-------------|---------|
| session-manager-plugin | Plugin for AWS CLI to start and end sessions that connect to managed instances | 1.2.792.0 |

### Why is session-manager-plugin here?

The official `homebrew/cask` tap is [deprecating session-manager-plugin](https://github.com/Homebrew/homebrew-cask/commit/8fb478e) and will fully disable it on 2026-09-01 because the binary [fails macOS Gatekeeper checks](https://github.com/orgs/Homebrew/discussions/6482). AWS has been [aware of the missing code signing since 2021](https://github.com/aws/session-manager-plugin/issues/21) but has not addressed it. This tap provides continued access to the cask after the official one is removed.
