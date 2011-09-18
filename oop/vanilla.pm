# Implement a class using a plain vanilla Perl without any supporting OOP packages.

package oop::vanilla;
use common::sense;
use workload;

sub new {
    my ($class, %self) = @_;

    bless \%self, $class;
    return \%self;
}

sub result {
    my $self = shift;
    return $self->{result};
}

sub run {
    my $self = shift;
    $self->{result} = workload->run();
}

sub run_arg1 {
    my ($self, $arg1) = @_;
    $self->{result} = workload->run_arg1($arg1);
}

1;
