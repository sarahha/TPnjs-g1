#
# * Module dependencies
#
express = require("express")

# Create an express application
app = express()

#
# * Routing
#
require(__dirname + "/routes") app, express

#
# * Jade template engine
#
app.set "views", __dirname + "/../views"
app.set "view engine", "jade"

#
# * Export module
#
module.exports = app
