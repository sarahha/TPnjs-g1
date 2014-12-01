module.exports = (app, express) ->
  "use strict"
  router = express.Router()
  router.get "/", (req, res) ->
    res.render "index",
      title: "se connecter"

    return


  #input
  #router.get('/login', function (req, res){
  #      res.render('login', {
  #          title: 'Hello world!',
  #      });
  #      //res.send({messages : messageStore.slice(req.params.since) });
  #    });
  #
  router.post "/login", (req, res) ->

    #console.log('working');
    #console.log('req ' + req.body.user);
    user = ""
    user = req.header.user
    pass = ""
    pass = req.header.pass
    console.log "user :" + user
    console.log "pass :" + pass
    res.render "login",
      title: "Login"

    return


  # Keep this as the last route rule
  router.get "*", (req, res) ->
    res.send 404
    return

  app.use "/", express.static(__dirname + "/../public") # server static content of '/public'
  app.use "/", router # use routers
  return
