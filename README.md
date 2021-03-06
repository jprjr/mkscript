# mkscript

I found myself using the same basic templates for most perl scripts and got tired of writing out the same old boilerplate.

`mkscript` is a perl script for making copies of script templates. Place a template file in the `templates` directory, and call `mkscript -t <templatename> <newfile>` to copy the template file into `<newfile>`

Additionally, you can symlink `mkscript` to `mkscript.<template file name>` as a shortcut. So, if I have a file named 'pl' in the templates directory, I can make a symlink named `mkscript.pl` and use that, similar to `mkfs.<filesystem>`

Lastly, `make_links.sh` is a short bash script to setup symlinks from files found in the `templates` directory. I'm assuming you have `$HOME/bin` in your path.

So, in short

    git clone https://github.com/jprjr/mkscript.git
    cd mkscript
    ./make_links.sh
    hash -r # or rehash on zsh
    mkscript.pl new_perl_script
