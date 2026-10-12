🐟 AM Fish Config

A clean, colorful, and developer-friendly Fish shell setup for Termux on Android.

AM Fish Config transforms the default Termux terminal into a customized command-line environment with Tide, Eza, Nerd Font icons, colorful file listings, and a custom internet connectivity indicator.

Designed for developers who want a modern, organized, and personalized terminal experience on Android.

✨ Features

- 🎨 Tide Prompt — A stylish prompt with custom branding and a clean layout.
- 📁 Eza — A modern alternative to "ls", featuring file icons and detailed listings.
- 🌈 Custom LS_COLORS — Different colors for programming languages, archives, images, audio, videos, and documents.
- 🌐 Internet Indicator — A custom right-side prompt segment for internet connectivity.
- 🔤 Nerd Font Icons — Attractive icons for files, directories, and terminal elements.
- 🏷️ Custom Branding — Replace AM with your own name or nickname.
- ⚡ Fish Aliases — Convenient commands for everyday terminal work.
- 📱 Termux Ready — Customized for Android and mobile development workflows.

📸 Preview

Add a screenshot of your customized Termux prompt here.

Show off your Tide prompt, file icons, and colorful Eza output.

📦 Requirements

- Android device
- "Termux" (https://github.com/termux/termux-app)
- Fish shell
- "Tide" (https://github.com/IlanCosman/tide)
- "Eza" (https://github.com/eza-community/eza)
- A compatible Nerd Font

🚀 Installation

1. Update Termux

pkg update && pkg upgrade

2. Install Required Packages

pkg install fish eza curl git

3. Install Fisher

Start Fish:

fish

Install Fisher:

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

4. Install Tide

fisher install IlanCosman/tide@v6

Run Tide's configuration wizard:

tide configure

Choose the prompt appearance you prefer.

🏷️ Customize Your Prompt Name

Want to replace AM with your own name, nickname, or branding? You can customize it using a Fish universal variable.

Change Your Name

Run this command in Fish:

set -U tide_os_icon ' YourName'

Replace "YourName" with your preferred text.

Example:

set -U tide_os_icon ' Alex'

Use Stylish Small Capital Letters

For a compact, modern look:

set -U tide_os_icon ' ᴀʟᴇx'

You can use your own name in the same style.

Restore AM Branding

To restore the original AM branding:

set -U tide_os_icon ' ᴀᴍ'

These are universal Fish variables, so the setting persists across Fish sessions.

Tip: Use a compatible Nerd Font to display the Android icon correctly.

📁 Eza Commands

Eza provides colorful file listings with icons.

Add these aliases to:

"~/.config/fish/config.fish"

# Eza — icons and colors
alias ls='eza --icons --color=always'
alias ll='eza -lah --icons --color=always'
alias la='eza -a --icons --color=always'
alias lt='eza --tree --level=2 --icons --color=always'

Reload the configuration:

source ~/.config/fish/config.fish

Available Commands

Command| Description
"ls"| List files with icons
"ll"| Detailed listing, including hidden files
"la"| Show hidden files
"lt"| Display a directory tree

🌈 Custom File Colors

Fish supports the "LS_COLORS" environment variable for file-type colors.

Add your preferred color rules to "~/.config/fish/config.fish".

Example:

set -gx LS_COLORS \
'di=1;34:ln=1;36:ex=1;32:or=1;31:mi=1;31' \
':*.py=38;5;220:*.java=38;5;39' \
':*.c=38;5;45:*.h=38;5;45:*.cpp=38;5;45:*.hpp=38;5;45' \
':*.lua=38;5;141:*.js=38;5;226:*.ts=38;5;39' \
':*.sh=38;5;82:*.bash=38;5;82:*.fish=38;5;82' \
':*.zip=38;5;208:*.tar=38;5;208:*.gz=38;5;208:*.7z=38;5;208' \
':*.png=38;5;213:*.jpg=38;5;213:*.jpeg=38;5;213:*.webp=38;5;213' \
':*.mp3=38;5;45:*.flac=38;5;45:*.wav=38;5;45:*.opus=38;5;45' \
':*.mp4=38;5;201:*.mkv=38;5;201:*.webm=38;5;201' \
':*.pdf=38;5;196:*.doc=38;5;27:*.docx=38;5;27:*.txt=38;5;250:*.md=38;5;250' \
':*.db=38;5;220:*.sqlite=38;5;220:*.sql=38;5;220'

Reload Fish:

source ~/.config/fish/config.fish

Note: Actual color rendering depends on the terminal, Eza version, and supported "LS_COLORS" rules.

🌐 Internet Status Indicator

This configuration can include a custom Tide right-side segment that checks internet connectivity.

- 🟢 Green icon when the connectivity check succeeds.
- 🔴 Red icon when the connectivity check fails.
- 🎨 Custom spacing and background styling to match the prompt.

The internet indicator requires "curl" and a working connection-check endpoint. A failed check does not always mean the entire internet is offline; the endpoint itself may be unreachable.

⚙️ Configuration Files

Fish configuration is stored in:

~/.config/fish/
├── config.fish
├── fish_plugins
├── functions/
├── completions/
├── conf.d/
└── themes/

Custom Fish functions belong in:

~/.config/fish/functions/

The main configuration file is:

~/.config/fish/config.fish

🔄 Reload Fish Configuration

After editing the configuration:

source ~/.config/fish/config.fish

To restart Fish:

exec fish

🔐 Security

Before publishing this configuration publicly:

- Never upload GitHub tokens, passwords, private keys, or other secrets.
- Review "fish_variables" before committing it.
- Remove personal paths and sensitive configuration values.
- Avoid committing temporary backups or generated files.
- Review all files before pushing them to GitHub.

👨‍💻 Author

AM

Customized with care on Termux for a clean, colorful, and productive mobile development workflow.

📄 License

This project does not specify a license yet. Add a license file if you want to define how others may use, modify, and redistribute your configuration.

---

⭐ If you find this configuration useful, consider starring the repository!

Built for Termux. Customized by AM.
