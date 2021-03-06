set -ev && \
cd ./healthy-school-buildings && \
remote_repo=${GITHUB_URL:-`git config remote.origin.url`} && \
remote_branch="gh-pages" && \
git init && \
git config user.name "nathan.bowser" && \
git config user.email "nbowser@gmail.com" && \
git add . && \
git commit -m 'build' && \
git push --force --quiet $remote_repo master:$remote_branch > /dev/null 2>&1 && \
rm -fr .git && \
cd ../
