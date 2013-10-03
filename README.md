alfred-open-in-filezilla
========================

An Alfred workflow to open up Filezilla and connect to a site.

[How to install a workflow](http://support.alfredapp.com/workflows:installing)

## Requirements

*OS/X
*Filezilla 

##Usage
The command to use the workflow is ```fz```. Open up the Alfred bar and enter ```fz <name in site manager>```.

The workflow will search the current OS/X user's Site Manager for an site that matches the input.

For example, you you have the following sites in your Site Manager...

![screenshot of the workflow in use](https://raw.github.com/jeffmagill/alfred-open-in-filezilla/master/docs/site-master.png)

The workflow will return...

![screenshot of the workflow in use](https://raw.github.com/jeffmagill/alfred-open-in-filezilla/master/docs/usage.png)

When a site is selected, Filezilla will open (or take focus) and connect to the FTP server you selected.