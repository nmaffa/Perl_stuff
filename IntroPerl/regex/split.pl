#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
#use Getopt::Long qw(GetOptions);
#Getopt::Long::Configure qw(gnu_getopt);
use Data::Dumper;

#Simple example
my $str = "ab cd ef gh ij";
my @words = split / /, $str;
print Dumper \@words;

#Simple example with limit
my @words1 = split / /, $str, 3;
print Dumper \@words1;

#Set to scalars example
my $str2 = "root:*:0:0:System Administrator:/var/root:/bin/sh";
my ($username, $password, $uid, $gid, $real_name, $home, $shell) = split /:/, $str2;
#Above line can be simplified as...
#my ($username, $real_name) = (split /:/, $str)[0, 4];
print "$username\n";
print "$real_name\n";

#Count words in a file or string using split
say scalar split / /, "Hi You are so funny lolo lololpol lo l";

#Split all characters (uses empty sring as a REGEX)
say Dumper split //, "hELLO WO";