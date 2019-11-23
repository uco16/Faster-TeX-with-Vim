# Faster-TeX-with-Vim
Slides and other material from our talk!

If you have any questions or comments, please feel free to send an email to uco21@cam.ac.uk.

#### Talk Information
Wednesday, 27 November at 2:30pm in MR5 at the CMS!

## Installing Vim
Vim should come installed with any UNIX computer. On Mac, you can also install MacVim (mvim) and on MS-Windows, you can install vim from [here](https://www.vim.org/download.php#pc) (we did not test this!).

## vimtutor
In our talk, we will show you what vim can do. If you want a perfectly pedagogical and structured step-by-step introduction to vim, our talk is the wrong choice! Instead, Umut learned the basics of vim by typing in `vimtutor` into the command line, and he would wholeheartedly recommend you doing the same! (unfortunately not available for MS-Windows users as far as we know)

This fun interactive learning experience of `vimtutor` will teach you how to use the all-purpose vim editor in just under 30 minutes!

## vimrc
The vimrc file contains initialisation commands to customise vim. It can be used to manage plugins, but also to change the appearance of vim, or declare new maps and shortcuts. If you understand the basics of vim, get more info by typing `vim +"help vimrc"`.

We recommend to place your vimrc file at:
*   Unix (Umut does this)       $HOME/.vim/vimrc
*   OS/2 (Afiq does this)       $HOME/.vimrc
*   MS-Windows                  $HOME/vimfiles/vimrc

If you use our vimrc files, remember to change the name from "afiq-vimrc" or "umut-vimrc" to just "vimrc" (or ".vimrc") before placing it into the correct folder.

## Installing Plugins

The official [vimtex](https://github.com/lervag/vimtex) and [UltiSnips](https://github.com/sirver/UltiSnips) GitHub pages contain information on how to install their packages. In particular, they favour the installation via a plugin manager (as Afiq will describe in the talk). The manual installation (which Umut describes below) is a relatively new feature in Vim.

### Manual Installation

This was tested on Unix (Fedora Linux) and with Umut's vimrc. For any questions, please feel free to email Umut at "uco21@cam.ac.uk"!
To install a package manually in vim, you only need (in theory) to place it in the correct folder.
Put the vimtex folder that you downloaded from [GitHub](https://github.com/lervag/vimtex) into `$HOME/.vim/pack/latex/start/vimtex` and it should work out of the box! 
Similarly, put [Ultisnips](https://github.com/sirver/UltiSnips) into `$HOME/.vim/pack/latex/start`; you can then add snippets with `:UltiSnipsEdit`. To get Umut's snippets, just place the `.snippets` files from `umut-UltiSnips` into a directory `$HOME/.vim/UltiSnips`.

#### Helptags
For the manual installation, you need to generate helptags to be able to use the `:help UltiSnips` or `:help vimtex` commands:
*   Place the packages in the folders described above
*   Open vim
*   Run `:helptags $HOME/.vim/pack/latex/start/vimtex/doc`
If it worked, then `:help vimtex-introduction` should open a help page for vimtex.
Then repeat the same for the UltiSnips folder (or any other documentation files you might want to add in the future).

