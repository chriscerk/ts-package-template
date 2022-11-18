while getopts n:r: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
        r) repo=${OPTARG};;
    esac
done


echo "---------------------";
echo "org/user name : $name";
echo "(used for package scope, repo path, etc)";
echo "---------------------";

echo "starting: replacing org-or-user -> $name";
grep -rl 'org-or-user' . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "" -e "s/org-or-user/$name/g"
echo "complete: replacing org-or-user -> $name";

echo "---------------------";
echo "repo name : $repo";
echo "---------------------";

echo "starting: replacing ts-package-template -> $repo";
grep -rl 'ts-package-template' . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "" -e "s/ts-package-template/$repo/g"
echo "complete: replacing ts-package-template -> $repo";

echo "starting: resetting CHANGELOG.md";
rm CHANGELOG.md
touch CHANGELOG.md
echo "complete: resetting CHANGELOG.md";