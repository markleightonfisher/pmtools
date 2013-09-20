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
    $output = `bin/pmdesc Scalar::Util 2>&1`;
};

is($?,        0,
	"pmdesc runs");
like($output, qr/Scalar::Util \(\d+\.\d+\) - A selection of general-utility scalar subroutines/,
	"described a module");
