#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);


my $path = shift || '.';
traverse_bottom_up($path);
say "----------------------";
traverse_top_down($path);

#Bottom up approach to reading a tree directory
sub traverse_bottom_up {
    my ($thing) = @_;
 
    return if not -d $thing;
    opendir my $dh, $thing or die;
    while (my $sub = readdir $dh) {
        next if $sub eq '.' or $sub eq '..';
        traverse_bottom_up("$thing/$sub");
        say "$thing/$sub";
    }
    close $dh;
    return;
}

#Top down approach to reading directory tree
sub traverse_top_down {
    my ($thing) = @_;
	
    say $thing;
    return if not -d $thing;
    opendir my $dh, $thing or die;
    while (my $sub = readdir $dh) {
        next if $sub eq '.' or $sub eq '..';
 
        traverse_top_down("$thing/$sub");
    }
    close $dh;
    return;
}