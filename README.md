This plugin can be used to create, delete, and navigate marks in *fish*.
It depends on Junegunn Choi's fuzzy-finder [fzf](https://github.com/junegunn/fzf).

## Installation

Run `install.fish` script from an interactive Fish shell. Choose to Add or Remove the functions.

Note: when removing: the `fzf-marks` file will remain for future reference.

## Usage

The script exposes two functions:

- **mark \<mark\>**, to register a new mark to the current directory;
- **fzm [\<optional-initial-query\>]**, to jump to or delete a mark using `fzf`.

Most of the keybindings in the search window are the default fzf ones.
The only additions are

- **ctrl-y**, to jump to a match;
- **ctrl-t**, to toggle a match for deletion;
- **ctrl-d**, to delete selected matches.

By default, the plugin binds the key `ctrl-g` to `fzm`.

# Customization

| Config                  | Default                         | Description                          |
| ------                  | -------                         | -----------                          |
| `FZF_MARKS_FILE`        | `~/.local/share/fzf/fzf-marks`  | File containing the marks data       |
| `FZF_MARKS_COMMAND`     | `fzf --height 40% --reverse`    | Command used to call `fzf`           |
| `FZF_MARKS_JUMP`        | `\C-g` (*bash*) or `^g` (*zsh*)     | Keybinding to `fzm`                  |
| `FZF_MARKS_COLOR_LHS`   | 39 (default)                    | ANSI color code of left-hand side    |
| `FZF_MARKS_COLOR_RHS`   | 36 (cyan)                       | ANSI color code of right-hand side   |
| `FZF_MARKS_COLOR_COLON` | 33 (yellow)                     | ANSI color code of separator         |
| `FZF_MARKS_NO_COLORS`   | 0                               | Set this to 1 to disable colors      |
| `FZF_MARKS_KEEP_ORDER`  | 0                               | Set this to 1 to keep order of marks |

See e.g. [here](http://pueblo.sourceforge.net/doc/manual/ansi_color_codes.html) for a description of ANSI color codes.

# License

MIT
