# pmtools testing

# ------ pragmas
use strict;
use warnings;
use pmtools;
use Test::More tests => 6;

# ------ define variable
my $output = undef;	# output from pmtools

my $iter = pmtools::new_pod_iterator('/tmp', 'quux');
is(ref $iter, 'CODE', 'created a pmtools iterator');
is($iter->(), '/tmp/pod/quux.pod', "first filename");
is($iter->(), '/tmp/quux.pod',     "middle filename");
is($iter->(), '/tmp/quux.pm',      "last filename");
is($iter->(), undef,               'beyond end of filenames');
is($iter->(), undef,               'way beyond end of filenames');
