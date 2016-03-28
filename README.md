# cins-base-tools
basic tools

1. [Linux brew](https://github.com/Linuxbrew/linuxbrew)

    A fork of [Homebrew](http://brew.sh/) used in Mac OS

    - Can install software to a home directory and so does - not require sudo
    - Install software not packaged by the native distribution
    - Install up-to-date versions of software when the native distribution is old
    - Use the same package manager to manage both your Mac and Linux machines

    Here we have implemented the autho installation script using `shell script`, to run using:

    ```
    git clone https://github.com/cins-china/cins-base-tools.git
    cd cins-base-tools
    chmod +x linuxbrew*.sh
    ./linuxbrew.sh
    ```

    then, one can install software with brew:
    ```
    brew update # update
    brew doctor # trobuleshooting
    brew install $WHAT_YOU_WANT # install
    ```

2. cins-buildout

    Customized version of [zc.buildout](https://github.com/buildout/buildout). Please check the wiki.

    ```
    brew tap cins/tools https://github.com/cins-china/cins-base-tools.git
    brew install cins/tools/cins-buildout
    ```

    then, one can use `buildout`.
