#!/usr/bin/perl
# Seek position within a File (seek_position.pl)
# 2013-09-26
 
# Seek is a very helpful perl function, especially with huge files
# With files, where sequential access may be time consuming and requires CPU.
# Seek provides quick random access.
# 0 -set the new position in bytes to POSITION
# 1 -set the current position plus POSITION
# 2 -set the new position EOF plus POSITION (often negative)
# Use seek function to set position 20000 bytes

open(FILEHANDLE, $ARGV[0]) or die ("Given File Can NOT Be Opened");
seek FILEHANDLE, 20000,0;
# Use perl tell function to check file position.
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 20000,0 \n";
# Add another 36 bytes
seek FILEHANDLE, 36,1;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 36,1 \n";
# Return position to byte 10
seek FILEHANDLE, 10,0;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 10,0 \n";
# Set position to the end of the file (EOF)
seek FILEHANDLE, 0,2;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 0,2 \n";

close FILEHANDLE; 
