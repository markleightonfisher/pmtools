# pman testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 2;

# ------ define variable
my $output = undef;	# output from pman

# ------ add pmtools to PATH for testing, so we use the current pmtools
$ENV{"PATH"} = 'blib/script:' . $ENV{"PATH"};

eval {
    $output = `bin/pman Scalar::Util 2>&1`;
};

is($?,        256,
	"pman runs");
like($output, qr/NAME.*Scalar::Util - A selection.*SYNOPSIS.*DESCRIPTION/ms,
	"found Scalar::Util");
