package oop::moose;
use common::sense;
use workload;
use Moose;

has name =>   (is => 'ro', isa => 'Str');
has result => (is => 'rw', isa => 'ArrayRef');

sub run {
    
}
