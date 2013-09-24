# pmdesc testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 2;

# ------ define variable
my $output = undef;	# output from pmdesc

# ------ add pmtools to PATH for testing, so we use the current pmtools
$ENV{"PATH"} = 'blib/script:' . $ENV{"PATH"};

eval {
    $output = `bin/pmdesc Tie::Hash 2>&1`;
};

is($?,        0,                               "pmdesc runs");
like($output, qr/Tie::Hash \(\d+\.\d+\) - \w/, "described a module");
