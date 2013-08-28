# faqpods testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 2;

# ------ define variable
my $output = undef;	# output from faqpods

eval {
    $output = `bin/faqpods 2>&1`;
};

is($?,        0,                    "faqpods runs");
like($output, qr/perlfaq[0-9].pod/, "found Perl POD");
