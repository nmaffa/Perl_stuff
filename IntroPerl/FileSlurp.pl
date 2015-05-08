#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

#Reading from text file turtle.txt
my $file = 'turtle.txt';
my $data = slurp($file);
 
print $data;
 
#Slurp function - means to read all text into one String  
sub slurp {
    my $file = shift;
    open my $fh, '<', $file or die;
    local $/ = undef;	# Sets delimiter $/ to undef instead of \n, meaning all text will be read at once
    my $cont = <$fh>;
    close $fh;
    return $cont;
}

