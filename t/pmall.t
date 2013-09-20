# pmall testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 2;

# ------ define variable
my $output = undef;	# output from pmall

# ------ add pmtools to PATH for testing, so we use the current pmtools
$ENV{"PATH"} = 'blib/script:' . $ENV{"PATH"};

eval {
    $output = `bin/pmall 2>&1`;
};

is($?,        0,                  "pmall runs");
like($output, qr/Scalar::Util \(\d+\.\d+\) - A selection of general-utility scalar subroutines/,
	"synopsized all modules");
