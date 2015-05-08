#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

say "Please type all the programming languages you know: ";
my @names = <STDIN>;	#Must use Ctrl + Z (or ^Z) to stop from reading
chomp @names;

say scalar @names;
say @names;

