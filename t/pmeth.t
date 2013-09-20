# pmeth testing

# ------ pragmas
use strict;
use warnings;
use Test::More tests => 2;

# ------ define variable
my $output = undef;	# output from pmeth

# ------ add other pmtools to PATH temporarily
$ENV{'PATH'} = 'blib/script:' . $ENV{PATH};

eval {
    $output = `bin/pmeth Scalar::Util 2>&1`;
};

is($?,        0,
	"pmeth runs");
like($output, qr/blessed.*dualvar.*isdual.*isvstring.*isweak/ms,
	"list methods of a module");
