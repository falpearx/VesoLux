const express = require("express");
const http = require("http");
const path = require("path");

const {Discord,Client,WebhookClient,ShardingManager,MessageEmbed,Intents} = require('discord.js');

const db = require("quick.db");
const avabiletable = new db.table("aviable");
var app = module.exports = express();
const request = require("request");
const session = require('express-session');
const mysql = require('mysql');
const { ifError } = require("assert");
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

app.set('view engine','ejs')
app.use(session({secret: "YARRRAK", resave: false, saveUninitialized: true, cookie: {expires: 2.16e+7}}));
app.use(express.static("public")); 
app.use(express.static(path.join(__dirname, "./public")));
app.get("/", (req, res) => 
{ 
if(req && req.session && req.session.user && req.session.user.data && req.session.user.data.id && yokabimyok)
{
    con.query("SELECT * FROM `vesosocket` WHERE discordid = '"+req.session.user.data.id+"'", function (err, results, fields) {
        if (err) throw err;
        con.query("SELECT * FROM `vesodatas` WHERE bos = '1'", function (err, resultsd, fields) {
          if (err) throw err;
          var ip;
          var hwid;
          if(avabiletable.has(results[0].discordid+"_ip"))
          {
if(avabiletable.get(results[0].discordid+"_ip") == "no")
{
ip = "0"
}
else
{
ip = avabiletable.get(results[0].discordid+"_ip")
}
          }
          else
          {
          avabiletable.add(results[0].discordid+"_ip","1")
          }

          if(avabiletable.get(results[0].discordid+"_hwid"))
          {
if(avabiletable.get(results[0].discordid+"_hwid") == "no")
{
hwid = "0"
}
else
{
hwid = avabiletable.get(results[0].discordid+"_hwid");  
}
          }
          else
          {
            avabiletable.add(results[0].discordid+"_hwid","1")
          }
          res.render("dash", {datas :req && req.session && req.session.user && req.session.user.data && {plan:  results[0].type || "Failed To Load.",ip: results[0].ip || "Failed To Load.",hwid: results[0].hwid || "Failed To Load.",key: results[0].keyz || "Failed To Load." ,ahwid: hwid || "Failed To Load.",aip: ip || "Failed To Load." ,tex:resultsd[0].executions,tau:resultsd[0].onlineuser,tus:resultsd[0].totalauthed} || {plan: "Loading",ip:"Ip",hwid:"Hwid",key:"Key",ahwid:"AHwid",aip:"AIp",tex:"Tex",tau:"Tau",tus:"Tus"} ,user: req && req.session && req.session.user || false}) 

        });
      });
}
else
{
    res.render("dash", {datas :req && req.session && req.session.user && req.session.user.data && {plan:  req.session.user.data.id || "no",ip:"Ip",hwid:"Hwid",key:"Key",ahwid:"AHwid",aip:"AIp",tex:"Tex",tau:"Tau",tus:"Tus"} || {plan: "Loading",ip:"Ip",hwid:"Hwid",key:"Key",ahwid:"AHwid",aip:"AIp",tex:"Tex",tau:"Tau",tus:"Tus"} ,user: req && req.session && req.session.user || false}) 

}
});

app.get("/resethwid", (req, res) => 
{ 
  if(req && req.session && req.session.user && req.session.user.data && req.session.user.data.id && yokabimyok)
  {
  
  const finish = new Date();
  finish.setSeconds(finish.getSeconds() + 1800 );
  if (1800  > 0) {
    if(avabiletable.has(req.session.user.data.id+"_hwid"))
    {
      var asdss = Number(avabiletable.get(req.session.user.data.id+"_hwid"))-1;
  if (asdss <= 0)
  {
  asdss = "no"
  }
      avabiletable.set(req.session.user.data.id+"_hwid",asdss);
  
      setTimeout(() => {
        var asdssd = Number(avabiletable.get(req.session.user.data.id+"_hwid"))+1;
        if (asdssd <= 0 || avabiletable.get(req.session.user.data.id+"_hwid") == "no")
        {
          asdssd = "1"
        }
      avabiletable.set(req.session.user.data.id+"_hwid",asdssd);
  
      }, 1800  * 1000);
    }
  }
  con.query("UPDATE VesoSocket SET `hwid` = 'new user' WHERE discordid = "+req.session.user.data.id, function (err, resultd) {
    if (err) throw err.message;
  try{}catch(e){}finally{
  res.redirect("/dashboard");
  }
  });
  }
  else
  {
  res.redirect("/login")
  }
});
app.get("/resetip", (req, res) => 
{ 
if(req && req.session && req.session.user && req.session.user.data && req.session.user.data.id && yokabimyok)
{

const finish = new Date();
finish.setSeconds(finish.getSeconds() + 1800 );
if (1800  > 0) {
  if(avabiletable.has(req.session.user.data.id+"_ip"))
  {
    var asdss = Number(avabiletable.get(req.session.user.data.id+"_ip"))-1;
if (asdss <= 0)
{
asdss = "no"
}
    avabiletable.set(req.session.user.data.id+"_ip",asdss);

    setTimeout(() => {
      var asdssd = Number(avabiletable.get(req.session.user.data.id+"_ip"))+1;
      if (asdssd <= 0 || avabiletable.get(req.session.user.data.id+"_ip") == "no")
      {
        asdssd = "1"
      }
    avabiletable.set(req.session.user.data.id+"_ip",asdssd);

    }, 1800  * 1000);
  }
}
con.query("UPDATE VesoSocket SET `ip` = 'new user' WHERE discordid = "+req.session.user.data.id, function (err, resultd) {
  if (err) throw err.message;
try{}catch(e){}finally{
res.redirect("/dashboard");
}
});
}
else
{
res.redirect("/login")
}
});
const clientd = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});  
clientd.login("MTAxMDc2MzE0MjM2NTcyNDcwMg.G6cyH6.7XWQBftxfE5pqwQvW3l7w6gu_zOJ4Xq9G-kh30")

app.get("/gscript", (req, res) => 
{ 
if(req && req.session && req.session.user && req.session.user.data && req.session.user.data.id && yokabimyok)
{
con.query("SELECT * FROM `vesosocket` WHERE discordid = '"+req.session.user.data.id+"'", function (err, results, fields) {
try
{
if(results != null && results[0] != null)
{
var key = results[0].keyz;
res.send("<span id='copyText'>getgenv().vesokey = '"+key+"' <br/> loadstring(game:httpGet('https://raw.githubusercontent.com/Uronow/VesoLux/main/main.lua'))() </span> <br/> <input type='button'  class='btn btn-primary' onclick='copyLink()' data-toggle='tooltip' title='Copy to Clipboard' value='copy link' readonly />  <script>function copyLink() { let copyText = document.getElementById('copyText'); var selection = window.getSelection();var range = document.createRange();range.selectNodeContents(copyText);selection.removeAllRanges();selection.addRange(range);document.execCommand('copy');}</script>")
}
else
{
res.send("<h1> Serveral Error Contact With Tuaxa#9999 On Discord </h1>")
}
}
catch(e) {}
finally{
}
})
}
else
{
res.redirect("/login")
}
});
const port = process.env.PORT || 3000;

app.get("/logout", async (req, res, next) => {
  res.clearCookie('YARRRAK');
  req.session.destroy();
  res.redirect('/')
});
app.get("/login", (req, res) => {
  res.redirect(formURL("AUTH"));
});

const CLIENT_SECRET = "6cnjDY6us-h44neE0O28PDplDUWJu9sz";
const CLIENT_ID = "1010763142365724702";
const SESSION_SECRET = "";
const DEVELOPMENT = false;


const REDIRECT_URI = DEVELOPMENT ? `http://localhost:${port}/authorize`: "https://vesolux.gq/authorize";

const DISCORD_API = {
    AUTH: "https://discordapp.com/api/oauth2/authorize",
    TOKEN: "https://discordapp.com/api/oauth2/token"
};
app.get("/authorize", async (req, res, next) => {

  const code = req.query && req.query.code;

  if (!code) return next();

  const data = await authorizeUserGrant(code);

  const userData = await getAsyncURL("/users/@me", data);
  const userGuilds = await getAsyncURL("/users/@me/guilds", data);

  if (!userData.avatar || !userData.username || !userGuilds) return res.redirect(formURL("AUTH"));

  userData.tag = `${userData.username}#${userData.discriminator}`;
  userData.avatar = `https://images.discordapp.net/avatars/${userData.id}/${userData.avatar}`;
  req.session.user = {data: userData, guilds: userGuilds};
  req.session.data = userData;
  if (req.session && req.session.user.data && req.session.user.guilds && data) {
      res.redirect(`/dashboard`)
  } else {
      res.redirect(formURL("AUTH"));
  }
});
const DAPI = "https://discordapp.com/api/v6";

const getAsyncURL = (url, data) => new Promise(resolve => {
  request.get({
      url: `${DAPI}${url}`,
      headers: {
          'Authorization': `${data.token_type} ${data.access_token}`
      }
  }, (err, res, body) => {
      if (err || !body) return resolve(false);
      try {
          return resolve(JSON.parse(body));
      } catch (err) {
          console.error(err);
          return resolve(false);
      }
  });
});

const authorizeUserGrant = code => new Promise(resolve => {
  request.post({
      url: DISCORD_API.TOKEN,
      headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
      },
      formData: {
          'client_id': CLIENT_ID,
          'client_secret': CLIENT_SECRET,
          'grant_type': 'authorization_code',
          'code': code,
          'redirect_uri': REDIRECT_URI
      }
  }, (err, res, body) => {
      if (err || !body) return resolve(false);
      try {
          const result = JSON.parse(body);
          if (result.error === "invalid_request") {
              return resolve(false)
          } else {
              return resolve(result);
          }

      } catch (err) {
          return resolve(false);
      }
  });
});

const formURL = type => `${DISCORD_API[type]}?client_id=${CLIENT_ID}&redirect_uri=${encodeURI(REDIRECT_URI)}&response_type=code&scope=identify%20guilds`;





 
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