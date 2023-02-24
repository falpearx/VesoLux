const express = require("express");
const http = require("http");
const path = require("path");
const {Discord,WebhookClient,ShardingManager,MessageEmbed,Intents} = require('discord.js');
const db = require("quick.db")
const app = express();
app.use(express.static(path.join(__dirname, "./public")));
app.get("/", (req, res) => { res.sendFile(path.join(__dirname, "index.html")) });
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

const httpServer = http.createServer(app);
const WebSocket = require("ws");
const SocketServer = require("ws").Server;
var crypto = require('crypto');
const server = express().listen();
const fs = require("fs");
const wss = new SocketServer({ server: httpServer });

function tencrypt_ag(strin)
{
var asdsadasdasd = "";
var sdfdsfdsfsddsf = strin;
var buffer = new Buffer(sdfdsfdsfsddsf, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdsadasdasd += "pr"+buffer[i]*21323213123;
  }
}
var base64data1 = Buffer.from(asdsadasdasd).toString('base64');
  //var encryptedPlainText = aesEcb.encrypt("92345478901234517890123556789242", base64data1);

var base64data2 = Buffer.from(base64data1).toString('base64');
/*var asdasdsafasfas = "";
var sfsdfdsgfdsgdfh = base64data2;
var buffer = new Buffer(sfsdfdsgfdsgdfh, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdasdsafasfas += "\\"+buffer[i]*23999992;
  }
}*/
var base64data3 = Buffer.from(base64data2).toString('base64');
var asfdsafdsfdsfsddfs = "";
var fdsfsdgfdfsgdf = base64data3;
var buffer = new Buffer(fdsfsdgfdfsgdf, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asfdsafdsfdsfsddfs += "\\"+String.fromCharCode(buffer[i]);
  }
}
var asddsffdhhgjjhkjhk = "";
var stfdfsdfdsr = asfdsafdsfdsfsddfs;
var buffer = new Buffer(stfdfsdfdsr, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asddsffdhhgjjhkjhk += "\\"+buffer[i];
  }
}
var base64data4 = Buffer.from(asddsffdhhgjjhkjhk).toString('base64');
var fdsfsdfdsf = "";
var fdsfsdfdsfds = base64data4;
var buffer = new Buffer(fdsfsdfdsfds, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    fdsfsdfdsf += "\\"+String.fromCharCode(buffer[i]);
   // console.log(String.fromCharCode(buffer[i]))
  }
}
return ".:/TuaxaEncoder\\:."+fdsfsdfdsf;

}

function tedcrypt_ag(strin)
{
  var replaced = strin.replace(".:/TuaxaEncoder\\:.", '');
  var adsdsds = replaced.split("\\")
  var replacedv2 = "";
  for (var i = 0; i < adsdsds.length; i++) {
    replacedv2 += adsdsds[i].replace("\\","");
  }
  var decryptedv1 = Buffer.from(replacedv2, 'base64').toString('ascii')
  var adsdsdsasdsadasd = decryptedv1.split("\\")
  var replasdasdacedv2 = "";
  for (var i = 0; i < adsdsdsasdsadasd.length; i++) {
    replasdasdacedv2 += String.fromCharCode(adsdsdsasdsadasd[i].replace("\\",""));
  }
  var adafdsfdsf = replasdasdacedv2.split("\\")
  var fdsfsdfsdfsd = "";
  for (var i = 0; i < adafdsfdsf.length; i++) {
    fdsfsdfsdfsd +=  adafdsfdsf[i].replace("\\","");
  }
  var decryptedv2 = Buffer.from(fdsfsdfsdfsd, 'base64').toString('ascii')
  /*var fdasfsdfdas = decryptedv2.split("\\")
  var jhgjkugbdfg = "";
  for (var i = 0; i < fdasfsdfdas.length; i++) {
    jhgjkugbdfg += String.fromCharCode(fdasfsdfdas[i]/23999992);
  }*/
  var decryptedv3 = Buffer.from(decryptedv2, 'base64').toString('ascii')
  var decryptedv4 = Buffer.from(decryptedv3, 'base64').toString('ascii')
  var asdasdsadas = decryptedv4.split("pr")
  var fdgdfgdf = "";
  for (var i = 0; i < asdasdsadas.length; i++) {
    fdgdfgdf += String.fromCharCode(asdasdsadas[i]/21323213123);
  }
  return fdgdfgdf;
}

function gencrypt(strin)
{
var asdsadasdasd = "";
var sdfdsfdsfsddsf = strin;
var buffer = new Buffer(sdfdsfdsfsddsf, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdsadasdasd += "pr"+buffer[i]*22344369;
  }
}
var base64data1 = Buffer.from(asdsadasdasd).toString('base64');
var fdsfsdfdsf = "";
var fdsfsdfdsfds = base64data1;
var buffer = new Buffer(fdsfsdfdsfds, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    fdsfsdfdsf += "\\"+String.fromCharCode(buffer[i]);
   // console.log(String.fromCharCode(buffer[i]))
  }
}
return ".:/TuaxaEncoder\\:."+fdsfsdfdsf;

}

function gedcrypt(strin)
{
  var replaced = strin.replace(".:/TuaxaEncoder\\:.", '');
  var adsdsds = replaced.split("\\")
  var replacedv2 = "";
  for (var i = 0; i < adsdsds.length; i++) {
    replacedv2 += adsdsds[i].replace("\\","");
  }
  var decryptedv1 = Buffer.from(replacedv2, 'base64').toString('ascii')
  var asdasdsadas = decryptedv1.split("pr")
  var fdgdfgdf = "";
  for (var i = 0; i < asdasdsadas.length; i++) {
    fdgdfgdf += String.fromCharCode(asdasdsadas[i]/22344369);
  }
  return fdgdfgdf;
}

function sencrypt(strin)
{
var asdsadasdasd = "";
var sdfdsfdsfsddsf = strin;
var buffer = new Buffer(sdfdsfdsfsddsf, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdsadasdasd += "pr"+buffer[i]*23030303;
  }
}
var base64data1 = Buffer.from(asdsadasdasd).toString('base64');
  //var encryptedPlainText = aesEcb.encrypt("92345478901234517890123556789242", base64data1);

var base64data2 = Buffer.from(base64data1).toString('base64');
var asdasdsafasfas = "";
var sfsdfdsgfdsgdfh = base64data2;
var buffer = new Buffer(sfsdfdsgfdsgdfh, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdasdsafasfas += "\\"+buffer[i]*45677;
  }
}
var base64data3 = Buffer.from(asdasdsafasfas).toString('base64');
var asfdsafdsfdsfsddfs = "";
var fdsfsdgfdfsgdf = base64data3;
var buffer = new Buffer(fdsfsdgfdfsgdf, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asfdsafdsfdsfsddfs += "\\"+String.fromCharCode(buffer[i]);
  }
}
var asddsffdhhgjjhkjhk = "";
var stfdfsdfdsr = asfdsafdsfdsfsddfs;
var buffer = new Buffer(stfdfsdfdsr, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asddsffdhhgjjhkjhk += "\\"+buffer[i];
  }
}
var base64data4 = Buffer.from(asddsffdhhgjjhkjhk).toString('base64');
var fdsfsdfdsf = "";
var fdsfsdfdsfds = base64data4;
var buffer = new Buffer(fdsfsdfdsfds, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    fdsfsdfdsf += "\\"+String.fromCharCode(buffer[i]);
   // console.log(String.fromCharCode(buffer[i]))
  }
}
return ".:TAUT:."+fdsfsdfdsf;

}

function sdecrypt(strin)
{
  var replaced = strin.replace(".:TAUT:.", '');
  var adsdsds = replaced.split("\\")
  var replacedv2 = "";
  for (var i = 0; i < adsdsds.length; i++) {
    replacedv2 += adsdsds[i].replace("\\","");
  }
  var decryptedv1 = Buffer.from(replacedv2, 'base64').toString('ascii')
  var adsdsdsasdsadasd = decryptedv1.split("\\")
  var replasdasdacedv2 = "";
  for (var i = 0; i < adsdsdsasdsadasd.length; i++) {
    replasdasdacedv2 += String.fromCharCode(adsdsdsasdsadasd[i].replace("\\",""));
  }
  var adafdsfdsf = replasdasdacedv2.split("\\")
  var fdsfsdfsdfsd = "";
  for (var i = 0; i < adafdsfdsf.length; i++) {
    fdsfsdfsdfsd +=  adafdsfdsf[i].replace("\\","");
  }
  var decryptedv2 = Buffer.from(fdsfsdfsdfsd, 'base64').toString('ascii')
  var fdasfsdfdas = decryptedv2.split("\\")
  var jhgjkugbdfg = "";
  for (var i = 0; i < fdasfsdfdas.length; i++) {
    jhgjkugbdfg += String.fromCharCode(fdasfsdfdas[i]/45677);
  }
  var decryptedv3 = Buffer.from(jhgjkugbdfg, 'base64').toString('ascii')
  var decryptedv4 = Buffer.from(decryptedv3, 'base64').toString('ascii')
  var asdasdsadas = decryptedv4.split("pr")
  var fdgdfgdf = "";
  for (var i = 0; i < asdasdsadas.length; i++) {
    fdgdfgdf += String.fromCharCode(asdasdsadas[i]/23030303);
  }
  return fdgdfgdf;
}
wss.on('connection',(ws)=>{
   console.log('A Client Connected!')
   ws.on('close',()=>{
       console.log('A Client Connection Closed!')
   });
   ws.on('message',(message)=>{
    var key = "";
    var usid = "";
    var dpname = "";
    var msgf = "";

    var fdasfsdfdas = message.toString().replace("1|Auth","").split("|")
    
    //console.log(gedcrypt(message.toString()).toString())
    for (var i = 0; i < fdasfsdfdas.length; i++) {
    if (i == 1) 
    {
        key = gedcrypt(fdasfsdfdas[i]);
    }
    else if (i == 2)
    {
        usid = fdasfsdfdas[i];
    }
    else if (i == 3)
    {
        dpname = fdasfsdfdas[i];
    }
    else if (i == 4)
    {
        msgf = fdasfsdfdas[i];
    }
}
    con.query("SELECT * FROM `vesosocket` WHERE okey = '"+key+"'", function (err, results, fields) {
 
/* console.log(key+" "+db.has(key).toString());
    if(db.has(key))
    {
    var mainkey = db.get(key);
    if (db.has(mainkey)) {*/
    if (db.has(usid+"_cd")) {
        const finish = db.get(usid+"_cd")
        const date = new Date();
        const kalan = (new Date(finish - date).getTime() / 1000).toFixed(2);
        if(ws.readyState===WebSocket.OPEN)
        {
        return ws.send(gencrypt("cooldown"))
        }
        else
        {
        return;
        }
    };
    
    const finish = new Date();
    finish.setSeconds(finish.getSeconds() + 5);
    if (5 > 0) {
        db.set(usid+"_cd", finish);
        setTimeout(() => {
          db.delete(usid+"_cd");
        }, 5 * 1000);
      }
    const webhookClient = new WebhookClient({ url : "https://discord.com/api/webhooks/1010245899538153483/LqvvJ8zcaM8P6rklLqSjVA8dOevjt9D1hvJ8GrW5c06KLdyj9fuBGqhkkpqZ0zz1GnlY" });

   /* const embed = new MessageEmbed()
        .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
        .setColor('#0099ff');*/
    try
	{
	if(msgf.length > 0)
	{
    webhookClient.send({
      username: dpname,
        avatarURL: 'https://www.roblox.com/headshot-thumbnail/image?userId='+usid+'&width=420&height=420&format=png',
        //embeds: [embed],
        content : msgf,
    });
	}
	}
	catch(e)
	{}
    wss.clients.forEach(function each(client){
     if(client.readyState===WebSocket.OPEN){
         client.send(""+"https://www.roblox.com/headshot-thumbnail/image?userId="+usid+"&width=420&height=420&format=png"+"|"+dpname+"|"+msgf);
     }
    });
    
    });
   });
});



const port = process.env.PORT || 3002;
httpServer.listen(port, () => { console.log("Server started. Port: ", port); });

const { Client} = require('discord.js');
const clientd = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});   
clientd.login("MTAxMzk0OTA4ODQwNTkzNDE3MQ.Go3G_F.Lqnim0U6-DCeVsJjXElEdbWYUv95SXUj6V8OoY")

clientd.on("message", function(message) { 
if(message.channel.id == "1010244720259235861" && !message.author.bot)
{
  wss.clients.forEach(function each(client){
    if(client.readyState===WebSocket.OPEN){
        client.send(""+message.author.avatarURL({ format: 'png' })+"|"+message.author.tag+"|"+message.content);
    }
   });
}
})

clientd.on('ready', () => {
  clientd.user.setStatus('dnd');
  clientd.user.setPresence({ activities: [{ type: "STREAMING",name: "Veso Lux Chat" }]})
varsrasr = true;
});


