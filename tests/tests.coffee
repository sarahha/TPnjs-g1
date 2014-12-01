globals = require(__dirname + "/../lib/config/globals")
db = require(__dirname + "/../lib/config/db")(globals)
expect = require("expect.js")

#describe('express rest api server', function(){
#    var id
#
#    it('post object', function(done){
#        superagent.post('http://localhost:1337')
#            .send({ name: 'admin'
#                , password: 'admin'
#            })
#            .end(function(e,res){
#                // console.log(res.body)
#                expect(e).to.eql(null)
#                expect(res.body.length).to.eql(1)
#                expect(res.body[0]._id.length).to.eql(24)
#                id = res.body[0]._id
#                done()
#            })
#    })
#}
describe "Database setup", ->
  it "has admin user", ->
    db.get "user:admin", (err, value) ->
      expect(value).to.be.an "object"
      expect(value.name).to.be globals.admin.name
      expect(value.password).to.be globals.admin.password
      return

    return

  return

describe "Users", ->
  user =
    name: "john"
    password: "dummy"

  it "can get admin user", ->
    db.users.get "admin", (err, value) ->
      expect(value.name).to.be globals.admin.name
      expect(value.password).to.be globals.admin.password
      return

    return

  it "can add a user", ->
    db.users.set user, ->

      # check if user is added
      db.get "user" + user.name, (err, value) ->
        console.log value
        expect(value.name).to.be user.name
        expect(value.password).to.be user.password
        return


      # other way to test it
      db.users.get user.name, (err, value) ->
        console.log value
        expect(value.name).to.be user.name
        expect(value.password).to.be user.password
        return

      return

    return

  it "can retrieve this new user", ->
    db.users.get user.name, (err, value) ->
      expect(value.name).to.be globals.admin.name
      expect(value.password).to.be globals.admin.password
      return

    return

  it "can delete a user", ->
    db.users.del user.name, (err) ->
      if err
        expect().fail()
      else
        db.users.get user.name, (err, value) ->
          expect.fail()  unless err
          return

      return

    return

  return


#TODO: add tests with user formatting
#TODO: add test with reserved username ex admin
#TODO: add form test
#TODO: test if database is properly closed
