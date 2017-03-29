command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <div class="cpu"
    <span></span>
    <span class="icon fa fa-bar-chart"></span>
  </div>
  """

update: (output, el) ->
  $(".cpu span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #E2CDC8
  font: 12px Hack
  right: 315px
  top: 6px
"""
