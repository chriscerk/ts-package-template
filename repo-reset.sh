while getopts n: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
    esac
done


echo "---------------------";
echo "org/user name to reset : $name";
echo "(used for package scope, repo path, etc)";
echo "---------------------";

echo "starting: replacing $name -> org-or-user";
grep -rl "$name" . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "s/$name/org-or-user/g"
echo "complete: replacing $name -> org-or-user";

