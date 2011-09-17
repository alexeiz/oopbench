package oop::moose_sig;
use common::sense;
use workload;

use Moose;
use Method::Signatures;
use namespace::autoclean;

has name =>   (is => 'ro', isa => 'Str');
has result => (is => 'rw', isa => 'ArrayRef');

method run() {
    $self->result(workload->run());
}

method run_arg1($arg1) {
    $self->result(workload->run_arg1($arg1));
}

__PACKAGE__->meta->make_immutable;
