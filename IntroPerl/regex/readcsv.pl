#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
#use Getopt::Long qw(GetOptions);
#Getopt::Long::Configure qw(gnu_getopt);
use Data::Dumper;
use Text::CSV;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";
 
#Calculate sum of numbers in 3rd column of csv (does NOT work for commas embedded in "")
=pod
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
 
while (my $line = <$data>) {
  chomp $line;
 
  my @fields = split "," , $line;
  $sum += $fields[2];
}
print "$sum\n";
=cut

#Calculate sum of numbers in 3rd column of csv (ideal - ignores commas and new lines in "")

my $csv = Text::CSV->new ({
  binary    => 1,
  auto_diag => 1,
  sep_char  => ','    # not really needed as this is the default
});
 
my $sum = 0;
open(my $data, '<:encoding(utf8)', $file) or die "Could not open '$file' $!\n";
while (my $fields = $csv->getline( $data )) {
  $sum += $fields->[2];
}
if (not $csv->eof) {
  $csv->error_diag();
}
close $data;
print "$sum\n";