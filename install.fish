#!/bin/fish
echo -e "Add to Fish\nRemove from Fish" | fzf --reverse | read CHOICE

switch $CHOICE
case "Add*"
  if test -f ~/.config/fish/conf.d/fzf-marks.plugin.fish
    echo "Already installed."
  else
    cp -vr fzf-marks.plugin.fish ~/.config/fish/conf.d/fzf-marks.plugin.fish
  end

case "Remove*"
  if test ! -f ~/.config/fish/conf.d/fzf-marks.plugin.fish
    echo "Already removed."
  else
    rm -v ~/.config/fish/conf.d/fzf-marks.plugin.fish
  end
end
