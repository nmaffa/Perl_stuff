#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my $price = "98-16\n";
my $price2 = "103-31+";
print bondPriceCheck($price);
print bondPriceCheck($price2);




sub bondPriceCheck{
	my $b = shift;
	return ($b =~ m/^(0|[1-9]\d*)-(3[01]|[0-2]\d)\+?$/);
}

