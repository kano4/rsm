RSM: Ruby Simple Manger
=======================

RSM is a simple script for switching Ruby.

Usage
-----

    $ rsm 1.9.3-p0

Getting Started
---------------

1. Clone this repository.

        $ git clone https://github.com/kano4/rsm.git ~/.rsm

2.  Add rsm to your `~/.bashrc` or `~/.zshrc`.

        source "$HOME/.rsm/rsm.sh"

3. Install Ruby versions into ~/.rsm/versions/ .
For example, download the source and run:

        $ ./configure --prefix=$HOME/.rsm/versions/1.9.3-p0 --enable-shared --disable-install-doc
        $ make
        $ make install

4. Switch Ruby by 'rsm' command.

        $ rsm 1.9.3-p0

5. Set default Ruby.

        $ echo "1.9.3-p0" > ~/.rsmrc
