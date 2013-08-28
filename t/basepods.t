# basepods testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 3;

# ------ define variable
my $output = undef;	# output from basepods

eval {
    $output = `bin/basepods 2>&1`;
};

is($?,        0,               "basepods runs");
like($output, qr/perl.pod/,    "found Perl POD");
like($output, qr/perlpod.pod/, "found POD POD");
