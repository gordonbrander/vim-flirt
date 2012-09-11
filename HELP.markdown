Vim Basics
==========

Here are a few basic things I've learned while flirting with Vim.

Modes
-----

Vim loves modes. As a designer, modes typically bug me. But like most things
Vim, you have to spend a bit of time warming up to it's way of doing things.

Vim's main modes are:

* `-- NORMAL --`: a.k.a "I just hit `esc` and I'm not in a mode.
* `-- INSERT --`: (hit the `i` key). This is how you enter text.
* `-- VISUAL --`: (hit the `v` key). This is how you select and manipulate text.
  Visual also has 2 "sub-modes", `-- VISUAL BLOCK --` and `-- VISUAL LINE --`.

Motions
-------

When in normal mode, you can type a number, followed by a command or
text manipulation. The next time you `esc`, the action you took will be
duplicated that many times.

Opening/Writing/Saving/Quitting
-------------------------------

Write to file
  `:w`

Force quit without saving
  `:q!`

Open a file in a buffer
  `:e` (edit)  

Create a new file
  `:e <new file name>`

[Save all open buffers](http://vim.wikia.com/wiki/VimTip652)

Manipulating text
-----------------

* Changing the [indentation of a block of text](http://vim.wikia.com/wiki/VimTip224).

  In visual mode, you can use the `>` and `<` command to indent and outdent a
  block by one tab stop, respectively. Like all commands, you can precede it
  with a number to indent by that amount.

Search/Replace
--------------

[Search/Replace in a file]: http://vim.wikia.com/wiki/Search_and_replace

Getting around
--------------

Vim's default navigation tool is a plugin called Netrw. It lets you edit both
local and remote files.

* [Explore files](http://vim.wikia.com/wiki/File_explorer)  
  `:Explore` Gives you a Netrw list file explorer in a buffer. Use the arrow/
  text navigation keys to go up and down the list. Hitting enter will open
  files and directories.

* Hitting `i` while viewing a Netrw list in `-- NORMAL --` mode will change
  the display style for the directory.

* [Where is the file you're working on?](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file)
  `:pwd`

If Netrw isn't cutting it for you, you may want to give
[NERDTree](https://github.com/scrooloose/nerdtree) a shot. It's a tree
explorer that creates a project drawer buffer.

Working with [Buffers](http://vim.wikia.com/wiki/Buffers)
---------------------------------------------------------

Split the screen between buffers (horizontal)
  `:split <filename>`

Split the screen between buffers (vertical)
  `:vsplit`

List all buffers
  `:ls`

Jump to a buffer
  `:b <buffer number or name>` (tab completion works here, too)

Programming
-----------

[Create a patch file](http://vim.wikia.com/wiki/Create_patch_for_currently_editing_file)
