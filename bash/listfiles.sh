#!/bin/bash
#---------------------------#
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#

# The shell expands a string containing
#+ a * to all filenames that "match".
# A filename matches if and only if
#+ it is identical to the match string after
#+ replacing the stars * with arbitrary strings.
# For example, the character "*" by itself expands
#+ to a space seperated list of all files in
#+ the working directory.
#+ (excluding those that start with a dot "." )


# Lists all the jpeg files.
echo *.jpg

# Lists all jpeg files in your public_html directory.
echo ${HOME}/public_html/*.jpg


# As it happens, this turns out to be very useful for performing operations on the files in a directory, especially used in conjunction with a for loop. 
#+ For example:
#!/bin/bash
for X in *.html
do
		grep -L '<UL>' "$X"
