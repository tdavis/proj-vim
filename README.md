## script type
utility

## description
Proj lets you save settings for your project in a simple file. For Python
projects, it provides settings for configuring a testrunner and has the ability
to parse failures and add them to your quickfix window.

### Commands
* :Proj <project> - Open project named <project> (tab-completes).
* :ProjAdd  - Prompts to add a new project in the current directory.
* :ProjFile - Open the project file in a split>
* :ProjInfo - Show all of the current project's settings in the status line.
* :ProjMenu - Open a menu with all of these commands.
* :ProjNotes - Open the project notes file in a split.
* :ProjOpen - Prompt to open a project.
* :ProjOpenTab - Prompt to open a project for the open tab. Projects opened this way will only be active in the opened tab, so that each tab can contain a project.
* :ProjRefresh - Reload the current project.
* :ProjReload - Reload the project file.
* :ProjTest - Run the project's tests.
* :ProjVim - Open the project's vim settings file in a split.

### File Syntax
DOS .ini

### Project Settings
* browser - A custom command for the filebrowser
* notes - Path to a text file with project notes
* path - Path to the project root directory
* vim - Path to a file with vim commands
* docksend - Upload all files in the project on save if the TransmitFtp plugin is available

### Test Settings
* test - The test command to run
* host - Optional host to connect to for test running (e.g. me@host)
* venv - A Python `virtualenv` name to activate prior to testing (or path, if
  you don't have them in one place)
* prefix - Common command to precede other shell commands with

### Sample Project File

    ; This is a comment
    [project]
    path = /path/to/project
    vim = /path/to/settings_file.vim
    docksend ; boolean option
    test = nosetests
    host = me@host
    venv = myproject
    prefix = source ~/.keychain/`hostname`-sh

    [path-with-spaces]
    path = /path/to/my\ project ; Escape spaces with \

### Global Options
* g:ProjDisableMappings (default: 0) - Set to 1 to turn off all mappings defined by this plugin
* g:ProjFile (default: '~/.vimproj') - Path to the project file.
* g:ProjFileBrowser (default: 'NERDTree') - The filebrowser command. Set to 'off' to not open a filebrowser.
* g:ProjMapLeader (default: '<Leader>p') - The prefix for default mappings
* g:ProjNoteFile (default: 'notes.txt') - Path to the project notes file
* g:ProjSplitMethod (default: 'vsp') - Command to use when opening a file with a Proj command such as ProjFile.
* g:ProjVenvRoot (default: '~/env') - Path to Python `virtualenv` root (if applicable).

### Default maps
These are all prefixed with g:ProjMapLeader by default.

* g:ProjAddMap (default: 'a') - Calls :ProjAdd
* g:ProjFileMap (default: 'f') - Calls :ProjFile
* g:ProjInfoMap (default: 'i') - Calls :ProjInfo
* g:ProjMenuMap (default: 'm') - Calls :ProjMenu
* g:ProjNotesMap (default: 'n') - Calls :ProjNotes
* g:ProjOpenMap (default: 'o') - Calls :ProjOpen
* g:ProjOpenTabMap (default: 't') - Calls :ProjOpenTab
* g:ProjReloadMap (default: 'r') - Calls :ProjReload
* g:ProjVim (default: 'v') - Calls :ProjVim

## install details
1. Extract the downloaded proj.tbz file
2. Copy proj/doc/proj.txt to .vim/doc/proj.txt
3. Copy proj/plugin/proj.vim to .vim/plugin/proj.vim
4. Run :helptags ~/.vim/doc to load the documentation
5. Create a file at ~/.vimproj or your custom g:ProjFile location with your projects
