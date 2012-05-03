#use Test::More tests => 23;
# or
#use Test::More skip_all => $reason;
# or
use Test::More tests => 3;
use Data::Dumper;
use strict;
use warnings;


BEGIN {
  use Config;
  if (! $Config{'useithreads'}) {
    print("1..0 # Skip: Perl not compiled with 'useithreads'\n");
    exit(0);
  }

  use_ok('Finance::Quant')


}


require_ok( 'Finance::Quant' );

my($got,$expected,$test_name)=(0,0,'Finance::Quant->new("AAPL")');


my $self = Finance::Quant->new("AAPL");


$self->Home();


my @symbols = keys %{$self->{result}};
         

# Various ways to say "ok"

$got = $#symbols;

print Dumper[keys %{$self->{result}},$got , $expected, $test_name];


ok($got > $expected, $test_name);

done_testing();

