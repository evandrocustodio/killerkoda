curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm use --install-if-missing 20
node -v # should print `v20.17.0`
npm -v # should print `10.8.2`
