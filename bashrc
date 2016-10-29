##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Salman Khan <calmankhan2@gmail.com>                            #
#        URL: http://github.com/calmankhan/dotfiles                          #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Others                                                               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

export TERM=xterm-256color
export ANDROID_HOME=/opt/android-sdk

##############################################################################
# 02. Aliases                                                                #
##############################################################################

alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ll -al'

alias windows='sudo mount -t ntfs-3g /dev/sda4 /media/Windows'
alias music='mpd && ncmpcpp -s visualizer'
alias cp='rsync -avhW --no-compress --progress' 


##############################################################################
# 03. Others                                                                 #
##############################################################################

#if [ -f /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; 
#then
#    source /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
#fi
