hg clone http://code.nsnam.org/bake
 export BAKE_HOME=`pwd`/bake 
 export PATH=$PATH:$BAKE_HOME
 export PYTHONPATH=$PYTHONPATH:$BAKE_HOME
 bake.py check
 #You should have seen something like: 
 #> Python - OK
  # > GNU C++ compiler - OK
  # > Mercurial - OK
  #  > CVS - OK
   #  > GIT - OK
   #  > Bazaar - OK
   #  > Tar tool - OK
   #  > Unzip tool - OK
   #  > Unrar tool - OK
   #  > 7z  data compression utility - OK
   #  > XZ data compression utility - OK
   #  > Make - OK
   #  > cMake - OK
   #  > patch tool - OK
   #  > autoreconf tool - OK
   #  > Path searched for tools: /usr/lib64/qt-3.3/bin
 #/usr/lib64/ccache /usr/local/bin  /usr/bin/bin/usr/local/sbin /usr/sbin
 #/sbin /user/dcamara/home/scripts/user/dcamara/home/INRIA/Programs/bin 
 #/user/dcamara/home/INRIA/repos/llvm/build/Debug+Asserts/bin
  bake.py configure -e ns-3.29
  bake.py show
  bake.py deploy
  bake.py download
  bake.py build
