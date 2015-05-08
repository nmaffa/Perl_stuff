#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

print "Welcome to Nick's Perl guessing game! Continue if you dare...\n\n";
print "I'm thinking of an unsigned integer from 1 to 200, can you guess what it is? \n";

my $rando = (int rand 200) + 1;
my $guess = int <STDIN>;

while ($rando != $guess){
	

	
	if ($guess < $rando){
		print "Lol, $guess is way too low\n";
	}
	
	
	if ($guess > $rando){
		print "Nope, $guess is too high\n";
	}
	

	$guess = int <STDIN>;	
}

print "Dratz, foiled again! You won!";