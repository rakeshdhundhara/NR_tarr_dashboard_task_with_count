
resource "newrelic_one_dashboard" "task_terr_dash" {
  count       = length(var.dashboard)
  name        = var.dashboard[count.index].name
  permissions = var.dashboard[count.index].permissions
  page {
    name = var.dashboard[count.index].pagename
    dynamic "widget_pie" {
      for_each = toset(var.dashboard[count.index].pie)
      iterator = widget
      content {
        title  = widget.value.title
        row    = widget.value.row
        column = widget.value.column
        height = widget.value.height
        width  = widget.value.width
        nrql_query {
          query = widget.value.query
        }
      }
    }
    dynamic "widget_bar" {
      for_each = toset(var.dashboard[count.index].bar)
      iterator = widget

      content {
        title  = widget.value.title
        row    = widget.value.row
        column = widget.value.column
        height = widget.value.height
        width  = widget.value.width
        nrql_query {
          query = widget.value.query
        }

      }
    }
  }


}
