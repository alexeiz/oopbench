use 5.014;
use common::sense;
use Benchmark qw(:all);

use workload;
use oop::vanilla;

my $procedural;
my $vanilla;

my %new_tests = (vanilla => sub { $vanilla = oop::vanilla->new(name => 'vanilla'); },
                 dummy   => sub { for (1..30) { $procedural++; } });

my %call_tests = (vanilla    => sub { $vanilla->run(); },
                  procedural => sub { $procedural = workload->run() });

say "testing new...";
cmpthese(0, \%new_tests);

say "\ntesting method call...";
cmpthese(0, \%call_tests);
