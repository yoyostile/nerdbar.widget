command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="mem"
    <span></span>
    <span class="icon fa fa-hdd-o"></span>
  </div>
  """

update: (output, el) ->
  $(".mem span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #E2CDC8
  font: 12px Hack
  right: 265px
  top: 6px
"""
