# DO NOT USE THIS PROJECT FOR YOUR ACTUAL EXAM

I do not know how often/if these final exam questions are ever rerun, but you are liable for your own Academic Honesty. If you want to study how my script works, that's fine, but do not cheat on your exams with this. I am only posting this project for archival purposes.

# Usage Instructions

This script takes at minimum 3 arguments: A source directory, a destination directory, and at minimum one file extension. You can specify any number of file extensions, but one must be provided in order for it to function.

If there are no complications, the script will "move" files with the file extensions provided from the source directory to the destination directory. In actuality, it will echo to stdout that it has performed this process, without actually performing it.

This is mostly to protect the state of the current directories, but has been tested and will work properly should the echoes be replaced by mv's.

If the same directory is specified twice, the process will exit to prevent any errors. The same will occur when the destination is already populated with files.

## Included Directories

There are 3 included directories. One with general media files with a variety of extensions (which should be empty files, and were last time I checked), one empty directory, and one populated directory for the purposes of testing the various states of the command. There's also a "notADir" fake directory file to test whether or not the script will process with a file passed as a directory argument.
