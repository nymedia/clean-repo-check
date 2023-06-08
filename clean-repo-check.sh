set -e

if [ $(git status -s | wc -c) -ne 0 ]; then
    git status
    echo "!ERROR-------------------!ERROR"
    echo "The working tree is not clean. There are either changed or uncommited files. Please check the output of git status above for more information about this failure"
    echo "!ERROR-------------------!ERROR"
    exit 1
fi
