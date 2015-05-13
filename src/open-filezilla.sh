#!/bin/bash

echo "<?xml version=\"1.0\"?>"
echo "<items>"

grep -io "<name>.*</name>" ~/.config/filezilla/sitemanager.xml | grep -io ">.*<" | grep -io "[^<]*" | cut -c2-10000 | grep -io "^\w.*$" | while read line; do
	set -- $line
	if [[ $line =~ {query}.* ]] ; then
		echo "<item uid='$line' arg='$line' valid='YES' autocomplete='$line'>"
		echo "    <title>$line</title>"
		echo "    <subtitle>Open '$line' in Filezilla</subtitle>"
		echo "     <icon type='fileicon'>/Applications/Filezilla.app</icon> "
		echo "</item>"
	fi

done

echo "</items>"