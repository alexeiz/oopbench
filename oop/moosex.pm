# Use MooseX::Declare to implement a class.

use MooseX::Declare;

class oop::moosex {
    use workload;

    has name =>   (is => 'ro', isa => 'Str');
    has result => (is => 'rw', isa => 'ArrayRef');

    method run() {
        $self->result(workload->run());
    }

    method run_arg1($arg1) {
        $self->result(workload->run_arg1($arg1));
    }
}
