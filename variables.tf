variable "var_filename" {
    type =  string
    description = "Enetr filename"
    default = "file4.txt"
}

variable "var_content" {
    type =  string
    description = "Enetr content"

}

variable "first-map" {
    type =  map(string)
  
}

variable "first-list" {
    type =  list(string)
  }

  variable "var-obj" {
    type =  object({
        f-name = string,
        con = string
        }
    )
  }
