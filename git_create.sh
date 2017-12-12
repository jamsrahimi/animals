#!/bin/sh
#Hi Sam, you can paste the reference of this site in this line, i will paste reference on the comment of commit.
repo_name="animals"
token="generateItViagithub"
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

 curl -u "jamsrahimi:$token" https://api.github.com/user/repos -d '{\"name\":\"'$repo_name'\"}'
git init
git remote add origin "https://github.com/your_github_username/$repo_name.git"
