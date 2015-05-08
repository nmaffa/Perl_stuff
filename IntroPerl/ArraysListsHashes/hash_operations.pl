#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);

my %color_of;
my $apple = "apple";
#Symbol before color_of should be $ instead of % since we are referring to single value (scalar)
$color_of{$apple} = 'red';
say $apple." is ".$color_of{$apple};

#Can instantiate a hash a bit more easily - left hand side automatically made a string
%color_of = (
    apple  => "red",
    orange => "orange",
    grape  => "purple",
);


#For iterating through keys of a hash, you could use keys function
for my $fruit (keys %color_of) {
    print "The color of '$fruit' is $color_of{$fruit}\n";
}

#Get length of hash (returns amount of key-value pairs)
say scalar keys %color_of;

#Hash to Array
my @just_words = qw(dog loyal cat evil snail slow lizard quiet);
my %just_pairs = @just_words;
print Dumper \@just_words;
print Dumper \%just_pairs;
say scalar %just_pairs;

#Check for existence
if ($just_pairs{dog}){
	say "woof";
}
if ($just_pairs{walrus}){
	say "purrrrrr";
}
else{say "Uh-OH! No Walrus! Let's get rid of cat and add walrus."}

#Delete key
delete $just_pairs{cat};
if ($just_pairs{cat}){
	say "cat still here";
}
else{
	say "cat left, yay!!! Come on, walrus!";
	$just_pairs{walrus} = "massive_tusks";
}

print Data::Dumper->Dump( [ \%just_pairs ], [ qw(*just_pairs) ] );