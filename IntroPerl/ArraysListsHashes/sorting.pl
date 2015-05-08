#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);
 
#Simple sorting example - sorts in ascending ASCII order
my @words = qw(foo bar zorg moo);
say Dumper \@words;	#Pre-sort
my @sorted_words = sort @words;
#Above sort function is equivalent of 'sort { $a cmp $b } @words;', where 'cmp' is default compare function
say Dumper \@sorted_words;  #Post-sort

#Sort based on customized compare method 'cmp'
my @words2 = qw(Foo bar Zorg moo);
#Below compare makes capital letters lowercase so that they can be sorted correctly
my @sorted_words2 = sort {lc($a) cmp lc($b)} @words2;
say Dumper \@sorted_words2;

#Sort in reverse order
my @sorted_words3 = sort {lc($b) cmp lc($a)} @words2;
say Dumper \@sorted_words3;

#When sorting numbers by numerical value instead of ASCII order, use <=> operator
my @numbers = (14, 3, 12, 23, 5, 78, 2);
my @sorted_numbers = sort {$a <=> $b} @numbers;
say Dumper \@sorted_numbers;

#Sort by number found within a String (use by_number subroutine below)
my @x = qw(foo_11 bar_2_bar text_3 tr49_b4); #Note that string is only sorted by first number found
my @y = sort by_number @x;
say Dumper \@y; 
 
#Returns 0, 1, or -1 based on number comparison 
sub by_number {
    my ( $anum ) = $a =~ /(\d+)/;
    my ( $bnum ) = $b =~ /(\d+)/;
    ( $anum || 0 ) <=> ( $bnum || 0 ); # The '||0' means 0 will be used if no number found in the String
}