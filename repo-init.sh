while getopts n: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
    esac
done


echo "---------------------";
echo "org/user name : $name";
echo "(used for package scope, repo path, etc)";
echo "---------------------";

echo "starting: replacing org-or-user -> $name";
grep -rl 'org-or-user' . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "s/org-or-user/$name/g"
echo "complete: replacing org-or-user -> $name";

echo "starting: resetting CHANGELOG.md";
rm CHANGELOG.md
touch CHANGELOG.md
echo "complete: resetting CHANGELOG.md";