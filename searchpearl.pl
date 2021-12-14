#!/usr/bin/perl
use Cwd;
use File::Basename;
use File::Find;

print 'Begining Searching', "\n";
#comment

#my $currentD = cwd();
#subprogram to find all .conf file types.
find({ wanted => \&findf}, $ENV{"HOME"});

sub findf {
     if(-d $_)
     {
       if($_ =~ /^\./) { }
       else {
         #print "cd directory: ",$_, "\n";
       }
     } else {
        #regex to get file extension/file type.
        my ($type) = $_ =~ /(\.[^.]+)$/;
        if($type eq '.conf') { 
          print "+Found a file: ",$_, "\n";
        }
     }
}
print "DONE","\n";
#open my $homeDir, '';
#File::chdir
#closedir ??