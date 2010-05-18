use Test::Simple 'no_plan';
use strict;

ok( system('perl -c bin/manifest2description') ==0 );



###############################################################################
# make entries
my @entries = grep {/ - /} split(/\n/,`cat t/MANIFEST.example`);

my $docroot = 't/public_html.tmp';

`rm -rf $docroot`;
`mkdir -p $docroot/docs`;

my @e;
for (@entries){
   my($path,$description) = split(/ - /, $_);
   

   ok( system('touch',"$docroot/$path") == 0 );
}

my @args = ('perl','bin/manifest2description','-t','-b',$docroot,'t/MANIFEST.example');
ok( system(@args) == 0, " testing command: @args");

my @args2 = ('perl','bin/manifest2description','-t','-b','./fakeroot','t/MANIFEST.example');
ok( system(@args2) != 0, " testing command: @args2");



`rm -rf $docroot`;





ok(1);

