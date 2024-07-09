# spaced-prompts.fish

> Adds a new line before the every prompt, except when the prompt is the first line of the terminal.

Printing a new line before the prompt is a common practice to separate the prompt from the previous output. But did you ever notice that when you start with a clean shell, the first line of your terminal is not the prompt but an empty line? This plugin fixes that and only adds a new line before the prompt if it's not the first line of the terminal.

- 📏 Add a new line before the prompt to separate it from the previous output
- ✨ Doesn't add a new line when the prompt is the first line of the terminal
- ✅ Keeps the `$status` of the last command intact
- ⌨️ Handles behaviors like `clear` and `Ctrl + L` correctly
- 🚀 Works with [Starship](https://starship.rs/)

## Installation

Using [fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install niklasravnsborg/spaced-prompts.fish
```

Update

```console
fisher update niklasravnsborg/spaced-prompts.fish
```

## Usage with Starship

If you use Starship as a prompt, add the following to your `~/.config/starship.toml`:

```toml
# We don't need this, because `spaced-prompts.fish` will add the new line before the prompt if necessary
add_newline = false
```

Add this to your `~/.config/fish/config.fish` to make sure that the new line is added before the prompt, when you start a new shell.

```fish
# Init starship
starship init fish | source

# Add correct new lines for starship prompt
_spaced_prompts
```

## Usage with other prompts

I only tested this with Starship so far, but it would be cool to get it working with other prompts as well. Pull requests are welcome!

## Caveats

There are some edge cases I discovered while developing this, that lead me to believe that this plugin might be more of a hack and ideally something like this could be implemented in fish itself.
