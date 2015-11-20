#!/bin/sh


# Nobody runs this except Haryadi

if [ $# == 0 ]; then

    echo ""
    echo "  Nobody runs this except Haryadi or the lead author"
    echo ""
    echo "  To sync, please type:"
    echo "" 
    echo "  ./sync-from-master-bib-files.sh yes"
    echo ""
    
    exit
fi


if [ "x$DIRPAPERS" == "x" ]; then
    echo "   DIRPAPERS environment variable does not exist."
    echo "   check your .bashrc or other .*rc files"
    exit
fi

srcdir=$DIRPAPERS/bibs


rsync -av  $srcdir/*.bib  . 

# cp -v $srcdir/*.bib .

