[README_RU.md](README_RU.md "README_RU")

Introduction
------------

This repository contains translations of Wing version 7 for all Wing Python IDE
products (including Wing Pro, Wing Personal, and Wing 101).  The following 
translations exist:

  PO/en -- Empty translation with all strings; use this to start a new translation
  PO/de -- German
  PO/fr -- French
  PO/ru -- Russian
  PO/es -- Spanish (partial; not currently active)

These can be edited with any number of tools available for working with 
gettext PO files.

Overview of Files
-----------------

Wing's translatable strings are split into a number of different files, and some 
are more important than others.  Here is an overview.

These contain strings users will see in the UI:

	bootstrap.po
	build-files.po
	src.po
	src_browser.po
	src_cache.po
	src_codewarnings.po
	src_command.po
	src_debug_client.po
	src_debug_tserver.po
	src_diff.po
	src_edit.po
	src_guimgr.po
	src_guiutils.po
	src_guiutils_pysidescintilla.po
	src_pref.po
	src_process.po
	src_proj.po
	src_pysource.po
	src_refactoring.po
	src_scripting.po
	src_search.po
	src_testing.po
	src_versioncontrol.po
	src_wingbase.po
	src_wingide.po
	src_wingutils.po


Some of Wing's functionality is implemented in scripts that work via the scripting
API.  These are in source code form in the 'scripts' directory in your Wing installation.
Users won't typically know the difference from the above, and these strings do show
up in the UI:
	
	scripts_debugger_extensions.po
	scripts_django.po
	scripts_editor_extensions.po
	scripts_emacs_extensions.po
	scripts_experimental.po
	scripts_pylintpanel.po
  scripts_brief.po


These contain strings that are mostly the docstrings for commands.  They are currently
only used in the documentation, which is only in English, so most of these strings can
be skipped.  However, a few are strings that end up in the UI because they are extracted
from strings in code and not docstrings.  Also, there are plans to add functionality in
the future that will expose all of these strings to the user, but for the most part
they are not needed now:
	
	src_debug_client_cmdmanager.po
	src_diff_commands.po
	src_edit_commands.po
	src_guimgr_commands.po
	src_proj_commands.po
	src_refactoring_commands.po
	src_search_commands.po
	src_testing_commands.po
	src_versioncontrol_commands.po
	src_wingide_topcommands.po


These are currently unused or only contain error strings and can be entirely skipped:
	
	scripts_testapi.po
	src_profile.po
  src_docutils_*.po
  src_external_*.po
  src_parsetools.po


Starting a New Translation
--------------------------

To start a translation for which Wing does not yet have support, you'll need to
copy the PO/en files to PO/xx where xx is initially one of the supported translations,
so you can select that language from Wing's preferences to test out your translation
as you work on it.  Temporarily move aside the existing directory for that translation.

Once you've completed enough of the translation for it to be added to Wing, rename PO/xx
using the ISO 639-1 language code for the translation you've made, and move back the 
translation you temporarily replaced.  Then submit your translation by forking this 
repository no bitbucket, committing and pushing your files to your fork, and submitting 
a pull request.

Building and Testing MO files
-----------------------------

The edited .po files can be converted into .mo files that you can try in Wing
as follows.

First, copy the Makefile and msgfmt.py files from the top level into the PO/* 
directory you'll be working in.  Then install Wing, matching the version of Wing 
for which the .po's have been generated.  

**Important:** You'll need to change 'fr' and other aspects of the examples below to match\
the language you're working on and the location of files on your system.

##Linux##

On Linux can set up a symlink to the dev area from the Wing installation so
that you can test your translation:
	
	sudo mv /usr/lib/wingpro7/resources/locale/fr/LC_MESSAGES/ /usr/lib/wingpro7/resources/locale/fr/LC_MESSAGES.old
	sudo ln -s `pwd` /usr/lib/wingpro7/resources/locale/fr/LC_MESSAGES

Then type 'make' to build the `*.mo` files.

##OS X##

On OS X the paths differ.  For example:

	cd /Applications/WingPro.app/Contents/Resources/resources/locale/fr
	mv LC_MESSAGES LC_MESSAGES.old
	ln -s /Users/mydir/path/to/wing7-po-all/PO/fr/LC_MESSAGES

Also type 'make' to build the `*.mo` files.

To start Wing bypassing OS X security checks that dislike changing the *.app* contents, run 
from the command line:

    /Applications/WingPro.app/Contents/Resources/wing
   
##Windows##

To run the make statement under the windows OS, additional MinGw libraries are required.
As an option, to avoid all these difficulties, you can run the following with any 
recent Python version:

	msgfmt.py --homedir <your repository>\wing7-po-all\PO\fr\ --mask-file  *.po --targetdir c:\REPO\wing7-po-all\PO\fr\LC_MESSAGES

All files from the folder `homedir` will be compiled by the mask `*.po`, which will be saved in the folder `targetdir`
  
	*<your repository>\wing7-po-all\LC_MESSAGES*

**after:**

- The files `*.mo` need to be copied to:

	*<WINGPATH>\resources\locale\fr\LC_MESSAGES*

- Or you can create a symbolic link:

	`mklink /D "c:\Program Files (x86)\Wing Pro 7\resources\locale\fr\LC_MESSAGES" c:\REPO\wing7-po-all\PO\fr\LC_MESSAGES`

Getting Help
------------

Contact support@wingware.com for assistance.
