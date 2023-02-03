// local_file
resource "local_file" "file" {
  filename = "file1.txt"
  content  = "Hello Terraform"

}

resource "local_file" "file1" {
  filename = "file2.txt"
  content  = "Hello Terraform, I am able to understand some things about you."
}
# local
resource "local_file" "file2" {
  filename = "file3.txt"
  content  = local.content_fr_files
}
# random 
resource "local_file" "file3" {
  filename = random_id.random-file-name.hex
  content  = "Hello Terraform, I am able to understand some things about you."
}
# string
resource "local_file" "file4" {
  filename = var.var_filename
  content  = var.var_content
}

# map
resource "local_file" "file5" {
  filename = var.first-map["filename"]
  content  = var.first-map["filename"]
}

# list
resource "local_file" "file6" {
  filename = var.first-list[2]
  content  = "content from list"
}

# object
resource "local_file" "file7" {
  filename = var.var-obj["f-name"]
  content  = var.var-obj["con"]
}



// locals

locals {
  content_fr_files = "Using locals with the help of resources"
}


// randam_id
resource "random_id" "random-file-name" {
  byte_length = 16
}
