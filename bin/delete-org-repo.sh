github-delete() {
 repo_name=$1
 org_name=$2

 dir_name=`basename $(pwd)`

 if [ "$repo_name" = "" ]; then
 echo "Repo name (hit enter to use '$dir_name')?"
 read repo_name
 fi

 if [ "$org_name" = "" ]; then
 echo "Org name (hit enter to use d3b-center)?"
 read org_name
 fi

 if [ "$repo_name" = "" ]; then
 repo_name=$dir_name
 fi

 if [ "$org_name" = "" ]; then
 org_name="d3b-center"
 fi

 token=`git config github.token`
 if [ "$token" = "" ]; then
 echo "Could not find token, run 'git config --global github.token <token>'"
 invalid_credentials=1
 fi

 if [ "$invalid_credentials" == "1" ]; then
 return 1
 fi

 echo -n "Deleting Github repository '$repo_name' ..."
 curl -X DELETE -H "Authorization: token $token" https://api.github.com/repos/$org_name/$repo_name
 echo " done."
}
