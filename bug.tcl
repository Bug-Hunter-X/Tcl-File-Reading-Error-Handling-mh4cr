proc read_file {filename} {
    set fp [open $filename r]
    if {$fp == -1} {
        return -1
    }
    set contents [read $fp]
    close $fp
    return $contents
}

set file_contents [read_file "my_file.txt"]
if {$file_contents == -1} {
    puts "Error opening file"
} else {
    puts $file_contents
}

#The error is that the proc doesn't handle the case where the file doesn't exist or can't be read.  The if statement checks if the file pointer is -1, but this is not a reliable indicator of failure.  A better approach would be to check the result of the open command. 