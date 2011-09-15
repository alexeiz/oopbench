package oop::vanilla;
use common::sense;
use workload;

sub new {
    my ($class, %self) = @_;

    bless \%self, $class;
    return \%self;
}

sub run {
    my $self = shift;
    $self->{result} = workload->run();
}

1;
