#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

#Arrays and List example
my @array = ( 1, 2, 3 );
push @array, $_ for 4..8;
printf "value = %d\n", shift @array while @array;
@array = ( 'Larry', 'Curly', 'Moe' );
print "My stooges are: " . join( ", ", @array ) . "\n";


#Testing command line arguments
say substr $ARGV[0], 1;
say "$ARGV[1]";