# Use Moose to implement a class.

package oop::moose;
use common::sense;
use workload;

use Moose;
use namespace::autoclean;

has name =>   (is => 'ro', isa => 'Str');
has result => (is => 'rw', isa => 'ArrayRef');

sub run {
    my $self = shift;
    $self->result(workload->run());
}

sub run_arg1 {
    my ($self, $arg1) = @_;
    $self->result(workload->run_arg1($arg1));
}

__PACKAGE__->meta->make_immutable;
