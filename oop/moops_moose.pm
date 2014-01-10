# Use Moops with Moose to implement a class

use Moops;

class oop::moops_moose using Moose {
    use workload;

    has name =>   (is => 'ro', isa => Str);
    has result => (is => 'rw', isa => ArrayRef);

    method run() {
        $self->result(workload->run());
    }

    method run_arg1($arg1) {
        $self->result(workload->run_arg1($arg1));
    }
}
