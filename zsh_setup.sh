#Install Zsh & Oh My Zsh
echo "Installing Oh My ZSH..."
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

echo "Setting up Oh My Zsh theme..."
cd  /Users/francescobenintende/.oh-my-zsh/themes
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# Changing theme from robbyrussell default to spaceship
sed -i -e 's/robbyrussell/spaceship/g' .zshrc
source .zshrc

# turning syntax on on vi
touch $HOME/.vimrc
echo "syntax on" >> .vimrc

echo "Setting up Zsh plugins..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ${(q-)PWD}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
echo "source ${(q-)PWD}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


source .zshrc
