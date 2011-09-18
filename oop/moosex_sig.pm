# Use MooseX::Declare to implement a class, but avoid
# MooseX::Method::Signatures which is known to be slow.  Use
# Method::Signatures::Simple instead.

use MooseX::Declare;

class oop::moosex_sig {
    use Method::Signatures::Simple name => 'def';
    # use Method::Signatures produces a 'method redifinition' error
    use workload;

    has name =>   (is => 'ro', isa => 'Str');
    has result => (is => 'rw', isa => 'ArrayRef');

    def run() {
        $self->result(workload->run());
    }

    def run_arg1($arg1) {
        $self->result(workload->run_arg1($arg1));
    }
}
