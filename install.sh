if ! hash git >/dev/null 2>&1; then
  echo "Please install Git"
  echo " >  xcode-select –install"
  exit 0
fi

echo "Creating symlinks..."
EXCLUDE="install.sh README.md Clayton.terminal Solarized\ Dark.terminal me.jpg osx_defaults.sh oh-my-zsh"
LIST=$(ls ${HOME}/.dotfiles)
for f in ${LIST}; do
  echo "${EXCLUDE}" | grep -q ${f} || \
      ln -s ${HOME}/.dotfiles/${f} ${HOME}/.${f} >/dev/null 2>&1
done

echo "Link zsh theme..."
if [ ! -f ${HOME}/.oh-my-zsh/custom/themes ]; then
  mkdir -p ${HOME}/.oh-my-zsh/custom/themes
fi
ln -sF ${HOME}/.dotfiles/oh-my-zsh/custom/themes/clburlison.zsh-theme ${HOME}/.oh-my-zsh/custom/themes >/dev/null 2>&1

# If running on a Mac, set-up Mac defaults..
# if uname | grep -q Darwin; then
#   echo "Running on a Mac, setting Mac defaults"
#   ${HOME}/.dotfiles/osx_defaults.sh
# fi

echo "*****"
echo "Complete"
echo ""