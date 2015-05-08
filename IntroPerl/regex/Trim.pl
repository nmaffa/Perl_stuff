#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


my $z = " abc ";
printf "<%s>\n", ltrim($z);  # <abc >
printf "<%s>\n", rtrim($z);  # < abc>
printf "<%s>\n", trim($z);   # <abc>

sub ltrim { my $s = shift; $s =~ s/^\s+//;       return $s };
sub rtrim { my $s = shift; $s =~ s/\s+$//;       return $s };
sub  trim { my $s = shift; $s =~ s/^\s+|\s+$//g; return $s };