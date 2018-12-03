 apt-get install -y gcc g++ python

#Note: Ubuntu 14.04 LTS release requires upgrade to gcc-4.9 from default gcc-4.8. More recent #Ubuntu versions are OK. The instructions at this link: http://askubuntu.com/questions/466651/how-#do-i-use-the-latest-gcc-on-ubuntu?answertab=votes#tab-top have been found to work.

   # minimal requirements for Python (release): This is the minimal set of packages needed to work #with Python bindings from a released tarball.

 apt-get install -y gcc g++ python python-dev

  #  minimal requirements for Python (development): For use of ns-3-allinone repository (cloned from Mercurial), additional packages are needed to fetch and successfully install pybindgen:

 apt-get install -y mercurial python-setuptools git

 #   Netanim animator: qt5 development tools are needed for Netanim animator; qt4 will also work #but we have migrated to qt5

 apt-get install -y qt5-default

 #   Support for ns-3-pyviz visualizer

  #      For ns-3.28 and earlier, PyViz is based on GTK+ 2, GooCanvas, and GraphViz:

# apt-get install python-pygraphviz python-kiwi python-pygoocanvas libgoocanvas-dev ipython

 #       For Ubuntu 18.04, python-pygoocanvas is no longer provided. The ns-3.29 release and later #upgrades the support to GTK+ version 3, and requires these packages:

 apt-get install -y gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  

 #   Support for MPI-based distributed emulation

apt-get install -y openmpi-bin openmpi-common openmpi-doc libopenmpi-dev

#    Support for bake build tool:

 apt-get install -y autoconf cvs bzr unrar

    #Debugging:

 apt-get install -y gdb valgrind 

    #Support for utils/check-style.py code style check program

apt-get install -y uncrustify

    #Doxygen and related inline documentation:

 apt-get install -y doxygen graphviz imagemagick
 apt-get install -y texlive texlive-extra-utils texlive-latex-extra texlive-font-utils texlive-lang-portuguese dvipng latexmk

 #   The ns-3 manual and tutorial are written in reStructuredText for Sphinx (doc/tutorial, doc/#manual, doc/models), and figures typically in dia (also needs the texlive packages above):

 apt-get install -y python-sphinx dia 

#Note: Sphinx version >= 1.12 required for ns-3.15. To check your version, type "sphinx-build". To #fetch this package alone, outside of the Ubuntu package system, try "sudo easy_install -U Sphinx".

 #   GNU Scientific Library (GSL) support for more accurate WiFi error models

 apt-get install -y gsl-bin libgsl2 libgsl-dev

  #  The Network Simulation Cradle (nsc) requires the flex lexical analyzer and bison parser #generator:

 #apt-get install flex bison libfl-dev

    #To read pcap packet traces

apt-get install -y tcpdump

   # Database support for statistics framework

apt-get install -y sqlite sqlite3 libsqlite3-dev

  #  Xml-based version of the config store (requires libxml2 >= version 2.7)

apt-get install -y libxml2 libxml2-dev

 #   Support for generating modified python bindings 

 apt-get install -y cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake pip install cxxfilt

# nd you will want to install castxml and pygccxml as per the instructions for python bindings (or # through the bake build tool as described in the tutorial). The 'castxml' package provided by 
# Ubuntu 18.04 and earlier is not recommended; a source build (coordinated via bake) is #recommended.

#Note: Ubuntu 16.04 and systems based on it (e.g. Linux Mint 18) default to an old version of llvm #(3.8). Users of Ubuntu 16.04 will want to explicitly install a newer version by specifying #'libclang-6.0-dev' and 'llvm-6.0-dev'.

  #  A GTK-based configuration system

 apt-get install -y libgtk2.0-0 libgtk2.0-dev

  #  To experiment with virtual machines and ns-3

 apt-get install -y vtun lxc

 #   Support for openflow module (requires some boost libraries)

apt-get install -y libboost-signals-dev libboost-filesystem-dev
