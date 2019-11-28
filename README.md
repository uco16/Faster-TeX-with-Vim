# Faster-TeX-with-Vim
Slides and other material from our talk!

If you have any questions or comments, please feel free to send an email to uco21@cam.ac.uk (Umut) or aaba2@cam.ac.uk (Afiq). 

### Talk Information
*    Title: Using Vim to TeX faster than you can write!
*    Speakers: Afiq Hatta and Umut Özer
*    When: Wednesday, 27 November at 2:30pm
*    Where: MR5, Centre for Mathematical Sciences

#### Abstract

Nothing beats LaTeX when it comes to clean and versatile mathematical typesetting. And nowadays, many people can type faster on a keyboard than they can write with pen and paper. But writing TeX is still too slow for daily use and its many commands are prone to errors. Or is it? What if there was a way to remove the trade-off between clean and versatile typesetting, and the time spent doing it?

We are two Part III students who use TeX to type up our notes in real time during lectures.
In this talk, we will demonstrate the methods and tools that we use, and which will allow you to TeX up a lecture or meeting in real time! (Or at least, go much faster than you did before).

We will cover:
- introductory Vim (the monster of all text editors)
- Vim plugins that streamline the use of LaTeX
- custom shortcut expressions for insanely fast typing
- how to get code which ALREADY has a bunch of intuitive shortcuts (courtesy of Gilles Castel)

We're talking key maps like `#a` -> `\alpha`, and `//` -> `\frac{}{}`. Typing out tensor indices will turn from agony into pleasure!

You should come if you want to:
- improve the efficiency and accuracy of your TeX coding,
- TeX faster for essays (e.g. Part III essay), lecture notes, books, or academic papers.
- find out about Vim - the best text editor in the world!

No prerequisites required!

---

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

The official [vimtex](https://github.com/lervag/vimtex) and [UltiSnips](https://github.com/sirver/UltiSnips) GitHub pages contain information on how to install their packages. In particular, they favour the installation via a plugin manager (as Afiq will describe in the talk). Below, we outline the method for installing plugins with a package manager (Vim-Plug), as well as manually. The manual installation (which Umut describes below) is a relatively new feature in Vim.

### Installation Using Vim-Plug 
Using Vim-Plug is a convenient way to get out-of-the-box installation. This method has been tested on Afiq's computer (Mac OS). Firstly, install Vim-Plug by reading the instructions [here](https://github.com/junegunn/vim-plug). To do this quickly, just go on your terminal and type in 

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


Next, grab Afiq's vimrc from the `afiq-vim` directory in this repository, and copy and paste the contents into `~/.vimrc`. 
Then, in command mode just type in the command `:PlugInstall`! After this, you should be done.
when you're in vim, make sure to run 

`:source ~/.virmc`.

#### Editing and using snippets 
If you have followed the above steps correctly, you now have access to UltiSnips. 
In vim, just type in the command 

`:UltiSnipsEdit`
And start writing your snippets. Gilles Castel has a great set that you can look at [here](https://github.com/gillescastel/latex-snippets/blob/master/tex.snippets). 
 

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

