#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);
use DBD::mysql;

my $dbh = DBI->connect("DBI:mysql:database=PerlPractice;host=localhost",
                         "root", "",
                         {'RaiseError' => 1});

#Code for creating table and inserting sample customer - only ran once                         
#$dbh->do("CREATE TABLE Customer (id INTEGER PRIMARY KEY, name VARCHAR(40))");  
#$dbh->do("INSERT INTO Customer VALUES (?, ?)", undef, 1, "Matt Jatt");
#$dbh->do("INSERT INTO Customer VALUES (?, ?)", undef, 2, "John Bohn");

# now retrieve data from the table.
my $sth = $dbh->prepare("SELECT * FROM Customer");
$sth->execute();
while (my $ref = $sth->fetchrow_hashref()) {
  print "Customer $ref->{'id'}: Name is $ref->{'name'}\n";
}
$sth->finish();
# Disconnect from the database.
$dbh->disconnect();