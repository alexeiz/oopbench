use 5.014;
use common::sense;
use Benchmark qw(:all);

use workload;
use oop::vanilla;
use oop::moose;
use oop::moose_sig;
use oop::moosex;
use oop::moosex_sig;

my $procedural;
my $vanilla;
my $moose;
my $moose_sig;
my $moosex;
my $moosex_sig;
my $prop;

my %new_tests =
    (vanilla    => sub { $vanilla = oop::vanilla->new(name => 'vanilla') },
     moose      => sub { $moose = oop::moose->new(name => 'moose') },
     moose_sig  => sub { $moose_sig = oop::moose_sig->new(name => 'moose_sig') },
     moosex     => sub { $moosex = oop::moosex->new(name => 'moosex') },
     moosex_sig => sub { $moosex_sig = oop::moosex_sig->new(name => 'moosex_sig') });

my %call_tests =
    (vanilla    => sub { $vanilla->run() },
     moose      => sub { $moose->run() },
     moose_sig  => sub { $moose_sig->run() },
     moosex     => sub { $moosex->run() },
     moosex_sig => sub { $moosex_sig->run() },
     direct     => sub { workload->run() });

my %call_tests_arg1 =
    (vanilla    => sub { $vanilla->run_arg1(5) },
     moose      => sub { $moose->run_arg1(5) },
     moose_sig  => sub { $moose_sig->run_arg1(5) },
     moosex     => sub { $moosex->run_arg1(5) },
     moosex_sig => sub { $moosex_sig->run_arg1(5) },
     direct     => sub { workload->run_arg1(5) });

my %prop_tests =
    (vanilla    => sub { $prop = scalar $vanilla->result() },
     moose      => sub { $prop = scalar $moose->result() },
     moose_sig  => sub { $prop = scalar $moose_sig->result() },
     moosex     => sub { $prop = scalar $moosex->result() },
     moosex_sig => sub { $prop = scalar $moosex_sig->result() },
     direct     => sub { $prop = scalar $vanilla->{result} });

say "testing new...";
cmpthese(0, \%new_tests);

say "\ntesting method call...";
cmpthese(0, \%call_tests);

say "\ntesting method call with one arg...";
cmpthese(0, \%call_tests_arg1);

say "\ntesting properties...";
cmpthese(0, \%prop_tests);
