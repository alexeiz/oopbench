# This package implements several methods that simulate a simple workload for
# performance tests of packages in the 'oop' namespace.

package workload;
use common::sense;

sub run {
    my @res;

    for my $len (0..5) {
        push @res, 'x' x $len;
    }

    return \@res;
}

sub run_arg1 {
    my $arg1 = shift;
    my @res;

    for my $len (0 .. $arg1) {
        push @res, 'x' x $len;
    }

    return \@res;
}

1;
