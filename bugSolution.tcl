proc read_file {filename} {
    set fp [open $filename r]
    if {[catch {$fp}]} {
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

#This solution uses the catch command to reliably detect errors during the file opening process. This approach is more robust and avoids potential issues with relying on the file pointer's value.