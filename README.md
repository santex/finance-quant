=head1 NAME

  Finance::Quant - Generic envirorment for Qunatitative Analysis in finance

=head1 DESCRIPTION

  First:  We analysing for all symbols in Finance::Quant::Symbols and fresch NASDAQ symbolsname
          the recommendations released by Institutional Brokers Estimate System IBES
  Second: process the StrongBuy contracts with R long strategy
  Last:   Publishing the results into Cache and Disc
    
  
=head1 SYNOPSIS
```
  use strict;
  use warnings;
  use Data::Dumper;
  use Finance::Quant;
  use Time::HiRes qw(usleep);
    # GETS ONE
    my ($symbol,$self,$recommended,$home) = ('GOOG',undef,undef,undef,{});
    #single custom symbol
    $self = Finance::Quant->new($symbol);
    $home = $self->Home($self->{config});
    #search data
    my $textbuffer = $self->do_dir_search($symbol);
    print Dumper [$symbol,$self,$home,$textbuffer];

    # GETS ALL
    my $self = Finance::Quant->recommended;
    print Dumper [$self->{config}];
    my $home = $self->Home($self->{config});
    print Dumper [$self->{config}];
    print Dumper [$self,$home];
```    
=head1 AUTHOR

Hagen Geissler <santex@cpan.org>


=head1 COPYRIGHT AND LICENCE

Copyright (C) 2012 by Hagen Geissler

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.12.4 or,
at your option, any later version of Perl 5 you may have available.

=head1 SUPPORT AND DOCUMENTATION

After installing, you can find documentation for this module with the
perldoc command.

    perldoc Finance::Quant

You can also look for information at:

    Documentation
        http://html5stockbot.com/data/documentation/ibes.html
        http://ibes-check.blogspot.com/
        http://html5stockbotdotcom.blogspot.com/view/flipcard

    Search CPAN
        http://search.cpan.org/dist/Finance::Quant/
```

=head1 SEE ALSO

  YOU NEED
  
  PERL
  ----
  Finance::Quant;
  Finance::Google::Sector::Mean;
  Finance::NASDAQ::Markets;
  Finance::Quant::Symbols;
  GD                   
  Test::More        
  Carp
  Text::Reform    
  Data::Dumper  		
  File::Spec::Functions		
  File::Path			
  Time::Local			
  File::Fetch			
  File::Copy			
  File::Find			
  Finance::Optical::StrongBuy	
  Finance::Google::Sector::Mean	
  Finance::NASDAQ::Markets	
  HTML::TreeBuilder		
  Text::Buffer			
  WWW::Mechanize
  GraphViz
  List::Util
  MIME::Base64
  GD::Graph::lines
  Statistics::Basic
  Thread::Queue
  Cache::Memcached
  LWP::UserAgent
  

  UNIX
  ----
  >GD
  >mysql
  >memcached  
   
  R
  - 
  >require(quantmod)
  >require(TTR)
  >require(blotter)
  >require(quantmod)
  >require(quantstrat)
  >require(PerformanceAnalytics)finance-quant
=============

Finance::Quant

```
