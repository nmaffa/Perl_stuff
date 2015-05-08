#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);

#Read file and add unique words to hash as key and make count of each word as value
my %count;
my $file = shift or die "Usage: $0 FILE\n";
open my $fh, '<', $file or die "Could not open '$file' $!";
while (my $line = <$fh>) {
    chomp $line;
    foreach my $str (split /\s+/, $line) {
        $count{$str}++;
    }
}
 
#Print hash in descending order of count, or by word if count equal
foreach my $str (sort { $count{$b} <=> $count{$a} or lc($a) cmp lc($b) } keys %count) {
    printf "%-31s %s\n", $str, $count{$str};
}