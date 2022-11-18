while getopts n:r: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
        r) repo=${OPTARG};;
    esac
done


echo "---------------------";
echo "org/user name to reset : $name";
echo "(used for package scope, repo path, etc)";
echo "---------------------";

echo "starting: replacing $name -> org-or-user";
grep -rl "$name" . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "" -e "s/$name/org-or-user/g"
echo "complete: replacing $name -> org-or-user";

echo "---------------------";
echo "repo name to reset : $repo";
echo "---------------------";
echo "starting: replacing $repo -> ts-package-template";
grep -rl "$repo" . --exclude-dir=.git --exclude-dir=node_modules --exclude="*.sh" | xargs sed -i "" -e "s/$repo/ts-package-template/g"
echo "complete: replacing $repo -> ts-package-template";

