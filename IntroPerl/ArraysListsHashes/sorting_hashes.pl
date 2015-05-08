#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);


my %planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Jupiter => 5.2,
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Pluto   => 39,
   Charon  => 39,
);

#Print hash pairs by ASCII order of keys
foreach my $name (sort keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}

say "--"x10;

#Print hash pairs by numerical order of value, or by ASCII value of name if values are equal
foreach my $name (sort { $planets{$a} <=> $planets{$b} or $a cmp $b } keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}