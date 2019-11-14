set -e
../../vendor/bin/drush csex -y
[[ -z $(git status -s) ]] || exit 1