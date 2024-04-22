
dashboard = [
  {
    name        = "rakesh-dashboard_01"
    permissions = "public_read_only"
    pagename    = "task-module"
    pie = [
      {
        title  = "1"
        row    = 1
        column = 1
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      {
        title  = "2"
        row    = 1
        column = 5
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      {
        type   = "billboard"
        title  = "6"
        row    = 3
        column = 1
        width  = 4
        height = 3
        query  = "SELECT average(duration) FROM Transaction WHERE transactionType = 'Web'"
      },
      {
        type   = "billboard"
        title  = "9"
        row    = 3
        column = 1
        width  = 4
        height = 6
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
    ]
    bar = [
      {
        type   = "billboard"
        title  = "3"
        row    = 1
        column = 9
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      {
        type   = "billboard"
        title  = "5"
        row    = 2
        column = 5
        width  = 8
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      {
        type   = "billboard"
        title  = "6"
        row    = 3
        column = 5
        width  = 8
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      {
        type   = "billboard"
        title  = "9"
        row    = 3
        column = 5
        width  = 8
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
    ]

}]
