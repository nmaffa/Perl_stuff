#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use Math::Complex;

print "Enter 3 variables for quadratic equation below : ";
my $a = <STDIN>;
chomp $a;
my $b = <STDIN>;
chomp $b;
my $c = <STDIN>;
chomp $c;

print "Roots are: ";