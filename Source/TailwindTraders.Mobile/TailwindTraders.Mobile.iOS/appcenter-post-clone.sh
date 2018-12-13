#!/usr/bin/env bash

########################################################################################################################
# XAML policies
########################################################################################################################

echo "Verifying XAML policies:"

pushd $APPCENTER_SOURCE_DIRECTORY/Source/TailwindTraders.Mobile/
mono ../Tools/XamlStyler/XamlStyler.Console/xstyler.exe -c ./CodeAnalysis/XamlStylerSettings.json -d . -r true -v

if [[ $? -eq 0 ]]
then 
echo
echo "Every XAML follows defined policies :-)" 
else
echo 
echo "Not every XAML follows defined policies :-(" 
exit 1
fi

popd