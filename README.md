homebrew-python
===============

This is a brew tap for installing older versions of Python. Currently this tap has the following formulas:

* `python26`
* `python31`
* `python32`
* `python33`
* `python34`
* `python35`

Prerequisites
-------------

The formula `openssl` will need to be installed for the `ssl` module to work

    $ brew install openssl

How to Use
----------

    $ brew tap derekkwok/python
    $ brew install python<xy>

where `<xy>` is the python version. For example, to install python 3.4

    $ brew install python34

Or to install python 2.6

    $ brew install python26

Check the versions of the newly installed python

    $ python2.6 --version
    Python 2.6.9
    $ python3.4 --version
    Python 3.4.4

Uninstall
---------

	$ brew uninstall python<xy>
	$ brew untap derekkwok/python
