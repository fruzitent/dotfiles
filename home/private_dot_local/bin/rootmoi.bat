@REM @help: https://github.com/twpayne/chezmoi/discussions/1510
chezmoi ^
    --cache "%USERPROFILE%/.cache/chezmoi/root" ^
    --destination "%SystemDrive%/" ^
    --persistent-state "%USERPROFILE%/.config/chezmoi/root/chezmoistate.boltdb" ^
    --source "%USERPROFILE%/.local/share/chezmoi/root" ^
    %*
