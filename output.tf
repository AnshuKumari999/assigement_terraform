
# output for content

output "content-from-file2" {
    value =  local_file.file1.content
  
}

# output for file

output "content-from-file3" {
    value =  local_file.file1.filename
  
}