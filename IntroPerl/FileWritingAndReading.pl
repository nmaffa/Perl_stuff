#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

#Writing to text file turtle.txt
my $filename = "turtle.txt";
open (my $fh, '>', $filename) or die "Could not open file '$filename' ";

print $fh "Henry the Tortoise \n";
print $fh "is not very fast :( \n";

close $fh;

#Following code will overwrite above write, hence why it is commented
=pod
open (my $fh1, '>', $filename) or die "Could not open file '$filename' ";
print $fh1 "But he's training to up his speed!! \n";
close $fh1;
=cut

#This code will append text to existing file instead of overwriting
open (my $fh2, '>>', $filename) or die "Could not open file '$filename' ";
print $fh2 "But he's training to up his speed!! \n";
close $fh2;

#Reading from text file turtle.txt
open (my $fh3, '<:encoding(UTF-8)', $filename) or die "Could not open file '$filename' ";
while (my $row = <$fh3>) {
  chomp $row;
  print "$row\n";
}
close $fh3;