#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);


my @words = qw(foo bar baz foo zorg baz);
my @unique_words = uniq( @words );
say Dumper \@unique_words;

#Subroutine checks if element is already in hash, if not, it stores it in hash and adds it to array
sub uniq {
  my %seen;
  return grep { !$seen{$_}++ } @_;
}