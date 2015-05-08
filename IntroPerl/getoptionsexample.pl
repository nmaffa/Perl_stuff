#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);
Getopt::Long::Configure qw(gnu_getopt);
use Data::Dumper;
 
my $debug;
my $source_address = 'Maven';
my $trace = 0;
my $opp = "defaultOpp";

#Below example of GetOptions used when we don't define signle character arguments
=pod
GetOptions(
    'from=s' => \$source_address,
    'debug' => \$debug,
) or die "Usage: $0 --debug  --from NAME\n";
 
=cut

#We can combine multiple arguments into signle argument by calling above use GetOpt::Long::Configure
# and defining arguments as single characters below
GetOptions(
    'from|f=s' => \$source_address,
    'debug|d' => \$debug,
    #To negate an option, say verbose, put ! at end of option name like below and call -noverbose from command line
    #'verbose!' => \$verbose,
    #Use below line to declare an argument as an int
    'trace|t=i' => \$trace,
    #Use below line (notice the ':' instead of '=') to make string value optional
    'optional|o:s' => \$opp,
) or die "Usage: $0 --debug  --from NAME\n";

say $debug ? 'debug' : 'no debug';
if ($source_address) {
    say "From: ".$source_address;
}
say "Trace ".$trace;
say "Optional: ".$opp;

#Note - after argument call and values are processed, ARGV only contains extra values not processed
print Dumper \@ARGV;

#To negate an option, 