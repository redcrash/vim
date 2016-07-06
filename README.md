# vim

My personal vim configuration files

When cloning this git repository, do it as:

    $ git clone --recursive https://github.com/redcrash/vim.git vim.git

After cloning, you can simply use the following commands to configure it:

    $ ln -s vim.git .vim
    $ ln -s .vim/vimrc .vimrc

To update the submodules run:

    $ git submodule foreach git pull origin master

Then, you'll need to commit the changes into the repository.

