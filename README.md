# command-launcher

`command-launcher` is a lightweight shell utility to save, manage, and run your frequently used terminal commands using custom IDs.

## ✨ Features

- Save any shell command with a custom ID
- Run saved commands with a simple call
- Supports `sudo` with `--superuser` flag
- Easily remove any saved command
- Shell-agnostic (works with Bash, Zsh, Fish, etc.)

## 🚀 Usage

```bash
command-launcher                         # Runs the default command
command-launcher -sc "echo Hello" -id hi # Saves 'echo Hello' under ID 'hi'
command-launcher -c hi                   # Runs command saved as 'hi'
command-launcher -r hi                   # Removes the command 'hi'
command-launcher -c secure -su           # Runs ID 'secure' with sudo
