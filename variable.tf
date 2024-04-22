

variable "dashboard" {
  type = list(object({
    name        = string
    permissions = string
    pagename    = string
    bar = list(object({
      title  = string
      row    = number
      column = number
      width  = number
      height = number
      query  = string

    }))
    pie = list(object({
      title  = string
      row    = number
      column = number
      width  = number
      height = number
      query  = string

    }))
  }))
}
g