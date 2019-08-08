#/usr/bin/perl

use strict;
use warnings;

my $t = time;
my $debug = 1;

open(my $f, "<../files/twitter.out") or die("no file");
my $ok = 0;
my $no = 0;
while(<$f>) {
  chomp;
  if(m/^([\d]{10,})\t(\w+)\t(.+?)\t(20\d\d\-\d\d\-\d\d)\s(\d\d:\d\d:\d\d)\t(\d+)\t(\d+).*$/) {
    printf("INSERT INTO users VALUES(%d, '%s', '%s', 'perl');\n", $1, $2, $3,);
    $ok++;
  } else {
    printf("NO: %s\n", $_) if $debug;
    $no++
  }
  last if $ok > 10;
}
close($f);

warn sprintf("OK: %d\nNO: %d\ntime: %ds\nEND\n", $ok, $no, time - $t);
