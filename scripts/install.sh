#!/bin/bash

echo "Packing the extension..."
rm ../eye-extended@Annavar-satish.shell-extension.zip -v
gnome-extensions pack ../eye-extended@Annavar-satish \
    --podir="../translations" \
    --extra-source="circle" \
    --out-dir="../"

echo "Uninstalling old extension..."
gnome-extensions uninstall eye-extended@Annavar-satish
rm -rfv ~/.local/share/gnome-shell/extensions/eye-extended@Annavar-satish

echo "Installing the extension..."
gnome-extensions install ../eye-extended@Annavar-satish.shell-extension.zip

echo "Cleaning up..."
#rm ../eye-extended@Annavar-satish.shell-extension.zip

echo "Done! Now restart your session."
