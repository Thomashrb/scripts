#!/bin/bash
# remove all installed GHC/cabal packages, leaving ~/.cabal binaries and docs in place.
# When all else fails, use this to get out of dependency hell and start over.
# Usage cabalclean.sh | follow instructions
read -p 'erasing all your user ghc and cabal packages - are you sure (y/n) ? ' ans
test x$ans == xy && ( \
    echo 'erasing directories under ~/.ghc'; rm -rf `find ~/.ghc -maxdepth 1 -type d`; \
    echo 'erasing ~/.cabal/lib'; rm -rf ~/.cabal/lib; \
    # echo 'erasing ~/.cabal/packages'; rm -rf ~/.cabal/packages; \
    # echo 'erasing ~/.cabal/share'; rm -rf ~/.cabal/share; \
    )
