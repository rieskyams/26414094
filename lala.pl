#!/usr/bin/perl
# Function definition
sub Average{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;
   foreach $item (@_){
      $sum += $item;
      print "$sum, ";
   }
   print "\n";
   $average = $sum / $n;
   print "Rata-ratanya : $average\n";
}
# Function call
Average(10, 20, 30);
