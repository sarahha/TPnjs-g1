# Load application module
app = require("../lib/app")

# Start server
server = app.listen(1330, "localhost", ->
  host = server.address().address
  port = server.address().port
  console.log "Server running at http://%s:%s", host, port
  return
)
