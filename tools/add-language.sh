# add a language, must be executed from the repo root

LANG=$1

mkdir res/values-$LANG/

cp res/values/strings.xml res/values-$LANG/strings.xml

# (needed because transifex may have different file times
# and does not overwrite old file)
touch -d "100 days ago" res/values-$LANG/strings.xml

echo "res/values/$LANG/strings.xml added:"
echo "- add the name to res/values/arrays.xml"
echo "- if needed, language mappings can be added to .tx/config"
echo "- tx pull"
echo "  (on problems, 'tx -d pull' gives verbose output)"
