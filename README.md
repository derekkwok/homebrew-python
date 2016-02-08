homebrew-python
===============

This is a brew tap for installing older versions of Python.

How to Use
----------

    $ brew tap derekkwok/python
    $ brew install 32
    $ brew install 33
    $ brew install 34

These formulas will add 4 symlinks per python version to `/usr/local/bin`. Below are the symlinks added for installing `python34`:

    python3.4 python3.4-config python3.4m python3.4m-config

Uninstall
---------

	$ brew untap derekkwok/python
	$ brew uninstall python32
	$ brew uninstall python33
	$ brew uninstall python34
