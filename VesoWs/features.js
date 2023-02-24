const express = require("express");
const http = require("http");
const path = require("path");
const { Client, Collection,WebhookClient, Intents } = require('discord.js');
const client = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});   
const Discord = require('discord.js');
const db = require("quick.db");
var app = module.exports = express();
const request = require("request");
const session = require('express-session');
app.set('view engine','ejs')
app.use(session({secret: "YARRRAK", resave: false, saveUninitialized: true, cookie: {expires: 2.16e+7}}));
app.use(express.static("public")); 
app.use(express.static(path.join(__dirname, "./public")));
app.get("/", (req, res) => 
{ 
res.render("features") 
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


