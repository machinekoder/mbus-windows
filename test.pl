#!/usr/bin/perl
use Data::HexDump;
select STDERR;
$| = 1; # disable buffering
select STDOUT;
$| = 1;
warn "print_then_read\n";
#open OUT,">>test.txt";
while (<STDIN>)
{
    $line = $_;
    warn "Got:" . unpack ("H*", $line) . "\n";

#    print STDERR "got ($line)\n";
#    warn "DUMP:". HexDump $line;
#    print OUT "DUMP:". HexDump $line;
#    print $line;
    #print "Hello:$line\n";    
    print pack ("H*", "E56813136808377282840505B4056A071E1000000F14FE165016");
}
#close OUT;
