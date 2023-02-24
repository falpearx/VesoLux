const express = require("express");
const http = require("http");
const path = require("path");
const { Client, Collection,WebhookClient, Intents } = require('discord.js');
const client = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});
const mysql = require('mysql');
var con;
var yokabimyok = false;

function handleDisconnect() {
  con = mysql.createConnection(({
    host: "localhost",
    user: "root",
    password: "",
    database: "vesolux"
  })); // Recreate the connection, since
                                                  // the old one cannot be reused.

  con.connect(function(err) {              // The server is either down
    if(err) {                                     // or restarting (takes a while sometimes).
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000); // We introduce a delay before attempting to reconnect,
    }                                     // to avoid a hot loop, and to allow our node script to
    yokabimyok = true
    console.log("Connected to Database Server")
  });                                     // process asynchronous requests in the meantime.
                                          // If you're also serving http, display a 503 error.
  con.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
      handleDisconnect();                         // lost due to either server restart, or a
    } else {                                      // connnection idle timeout (the wait_timeout
      throw err;                                  // server variable configures this)
    }
  });
}

handleDisconnect();
const Discord = require('discord.js');
const db = require("quick.db");
var app = module.exports = express();
const request = require("request");
const session = require('express-session');
const { ifError } = require("assert");
app.set('view engine','ejs')
app.use(session({secret: "YARRRAK", resave: false, saveUninitialized: true, cookie: {expires: 2.16e+7}}));
app.use(express.static("public")); 
app.use(express.static(path.join(__dirname, "./public")));
app.get("/", (req, res) => 
{ 
con.query("SELECT * FROM `vesodatas` WHERE bos = '1'", function (err, resultsd, fields) {
if (err) throw err;
if (resultsd != null && resultsd[0] != null && yokabimyok)
{
res.render("main",{datas : {onlineplayers:resultsd[0].executions,totalplayers:resultsd[0].onlineuser,totalusers:resultsd[0].totalauthed}}) 
}
})
});
const port = process.env.PORT || 3000;


function makeidZZZ(length) {
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOP';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * 
 charactersLength));
   }
   return result;
}


