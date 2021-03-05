variable "os" {
  description = "The Os reference to search for"
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type        = map(string)
  default = {
    windows-2019-base    = "Windows_Server-2019-English-Full-Base*"
    windows-2016-base    = "Windows_Server-2016-English-Full-Base*"
    windows-2012-r2-base = "Windows_Server-2012-R2_RTM-English-64Bit-Base*"
    windows-2012-base    = "Windows_Server-2012-RTM-English-64Bit-Base*"
    windows-2008-r2-base = "Windows_Server-2008-R2_SP1-English-64Bit-Base*"
  }
}
