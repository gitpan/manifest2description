use ExtUtils::MakeMaker;

WriteMakefile(

   NAME => 'manifest2description',
   
   VERSION_FROM   => 'bin/manifest2description',
   
   ABSTRACT_FROM  => 'bin/manifest2description',      
   
   LICENSE        => 'perl',   
   
   AUTHOR         => 'Leo Charre leocharre at cpan dot org',   
   
   EXE_FILES => [qw(bin/manifest2description)],

   
   # gen /usr/bin/pmused by Tue May 18 16:18:00 EDT 2010 
   PREREQ_PM => {
      'Getopt::Std::Strict'               => '1.01',
      'Test::Simple'                      => '0',
   },

);


