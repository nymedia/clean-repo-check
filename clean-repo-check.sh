set -e

wdir="$PWD"; [ "$PWD" = "/" ] && wdir=""
case "$0" in
  /*) scriptdir="${0}";;
  *) scriptdir="$wdir/${0#./}";;
esac
scriptdir="${scriptdir%/*}"

$scriptdir/../../../vendor/bin/drush cex -y
if [[ $(git status -s | wc -c) -ne 0 ]]; then
    echo "Working tree is not clean:"
    git status
    exit 1
fi
