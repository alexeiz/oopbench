# Implement a class using a plain vanilla Perl without any supporting OOP
# packages, but with use of Perl 5.20 signatures.

package oop::vanilla_sig;
use common::sense;
use workload;

no warnings 'experimental::signatures';
use feature 'signatures';

sub new($class, %self) {
    bless \%self, $class;
    return \%self;
}

sub result($self) {
    return $self->{result};
}

sub run($self) {
    $self->{result} = workload->run();
}

sub run_arg1($self, $arg1) {
    $self->{result} = workload->run_arg1($arg1);
}

1;
