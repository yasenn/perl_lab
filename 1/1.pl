#! /usr/bin/perl -w
    eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
        if 0; #$running_under_some_shell

# renames files with special symbols in filename to md5sum

use strict;
use File::Find;
use Digest::MD5;

# for the convenience of &wanted calls, including -eval statements:
use vars qw/*name *dir /;
*name   = *File::Find::name;
*dir    = *File::Find::dir;

sub wanted;

my $extension = "txt";

# Traverse desired filesystems
File::Find::find({wanted => \&wanted}, '.');
exit;


sub wanted {
    if (/^.*\.txt\z/s) {
      my $md5sum = Digest::MD5::md5_hex($name);
      my $newfilename = $File::Find::dir . "/" . $md5sum . ".$extension\n";
      print( "Renaming $name \t -> \t " . $newfilename . "\n" );
      rename( "$name", "$newfilename" ) or print "Error\n";
    } 
}

