#  Cat9 - correlation of cat events
#  
#  Written by Robert Day CISSP 9/21/2014
#
#   Device file : basis.conf 
#
#   function : Using fuzzy logic to determine correlation of events based on device 
#   significance, designated level of device, known returns of application.
#   Analogy : a water meter in line to your home is built to expect water pressure at 
#   55 PSI. If the pressure is suddenly changed to 10,000 PSI, the water meter breaks, 
#   allowing the water to spill out. Nothing is lost within your home. If the water meter
#   holds, then other flex lines break spilling water and damaging your home.
#
#   part of : N/A
#
#
#
##############################################

#!/usr/bin/perl

# vars
my @devices;
my $confdir="/usr/cat9";
my $confdir="/usr/cat9/exp";
my $tmpdir1="/usr/cat9/tmp1/";
my $conf="basis.conf";
my $exp1="expfile.db";
my @attribs;



# Program

main();


sub main{
	#filelist();
	fileload();
   
};

sub fileload{
	open(DEVICECONF, "< ./$conf") or die "$conf file is missing from the conf directory!\n";    
	@attribs = <DEVICECONF>;
	close(DEVICECONF);
};

sub filelist{
	@files = <$confdir*>;
	foreach $file (@files) {
	print $file . "\n";
 	};
}; 

sub resp-known{
	$purr="Purr ";
	$meow="Meow ";
	$headrub="Rub head on ";
	$scentrub="Rub head scent glad on ";
	$bodyrun="Rubs body against ";
	
};





