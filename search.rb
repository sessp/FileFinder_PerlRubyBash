require 'find'
#this seems a lot faster than bash, make sure i've done it right.
#simple search function that searches for .conf files
def search_func()
    totalNum = 0
    print 'Begining File Search',"\n"
    print "\n", "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-", "\n"
    Find.find(Dir.home()) do |path| #ENV["HOME"] __dir__ for current directory
      if FileTest.directory?(path) #If it's a directory move into it
        #print 'Moved to a different directory',"\n"
        next
       else  #else it must be a file
          if File.extname(path) == ".conf"#File.fnmatch('*.txt',path) == true#FileTest.extname("*.sh")
             print '+ ',File.basename(path), " has been found in ",File.dirname(path),"\n"
             totalNum = totalNum + 1 
          end
       end 
    end
    print "Finished: ", "Prog found ",totalNum," files of type .conf", "\n"
    print "\n", "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-", "\n"
end

search_func()
#comment

=begin
Multilinecomment
=end