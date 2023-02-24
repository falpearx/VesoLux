const express = require("express");
const http = require("http");
const path = require("path");
const Discord = require('discord.js');

const db = require("quick.db");
const admintable =  new db.table("admin")
const usertable =  new db.table("user")

const app = express();
const serverd = app.listen();
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
app.use(express.static(path.join(__dirname, "./public")));
//app.all('*', ensureSecure); // at top of routing calls

/*function ensureSecure(req, res, next){
  if(req.secure){
    // OK, continue
    return next();
  };
  // handle port numbers if you need non defaults
  // res.redirect('https://' + req.host + req.url); // express 3.x
  res.redirect('https://' + req.hostname + req.url); // express 4.x
}
app.get("/", (req, res) => { res.sendFile(path.join(__dirname, "index.html")) });*/

const WebSocket = require("ws");
const SocketServer = require("ws").Server;
var crypto = require('crypto');
const server = express().listen();
const fs = require("fs");
const httpServer = http.createServer(app);
const wss = new SocketServer({ server: httpServer });
const { randomUUID } = require('crypto');

var authedvbert = 0;
var varsrasr = false;
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

//const  url = require('url');

wss.on('connection',(ws,req)=>{
  /*const location = url.parse(req.url, true);
  console.log(location.pathname);
  if(location.pathname != "/auth")
  {
    console.log("Closing Client Because Not Requesting Auth.")
    ws.close();
return;
  }*/
   console.log('A Client Connected!')

   con.query("SELECT * FROM `vesodatas` WHERE bos = '1'", function (err, results, fields) {
    var lonline = Number(results[0].onlineuser)+1;
    if(varsrasr == true)
    {
     clientd.user.setPresence({ activities: [{ type: "STREAMING",name: "Online User(s) = "+lonline.toString() }]})
    }
           con.query("UPDATE `vesodatas` SET `onlineuser` = '"+lonline+"' WHERE `vesodatas`.`bos` = 1; ", function (err, resultd) {
            if (err){
              const webhookClient = new WebhookClient({ url : "https://ptb.discord.com/api/webhooks/1010795222155919421/HHUt0P6HhLvOtkeU04JuKLjNe9-VFUPIa7QvANQpIjZslzOn_A7NpyrvWYMHuPNG29LV" });
    
                /* const embed = new MessageEmbed()
                     .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
                     .setColor('#0099ff');*/
                const monstsdsad = new Discord.MessageEmbed().setAuthor("Wanda Fan Hd","").setTitle(`Error On Auth Value`).setDescription("Hey Yo Tuaxa Im Have Error!")
    
                webhookClient.send({
                   username: 'Veso Auth Lux Error',
                     avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
                     //embeds: [embed],
                     embeds:[monstsdsad],
                 });
            };
            var ltoauth = Number(results[0].totalauthed)+1;
            var lexecitions = Number(results[0].executions)+1;

            con.query("UPDATE `vesodatas` SET `totalauthed` = '"+ltoauth+"', `executions` = '"+lexecitions+"' WHERE `vesodatas`.`bos` = 1; ", function (err, resultd) {
              if (err){
                const webhookClient = new WebhookClient({ url : "https://ptb.discord.com/api/webhooks/1010795222155919421/HHUt0P6HhLvOtkeU04JuKLjNe9-VFUPIa7QvANQpIjZslzOn_A7NpyrvWYMHuPNG29LV" });
      
                  /* const embed = new MessageEmbed()
                       .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
                       .setColor('#0099ff');*/
                  const monstsdsad = new Discord.MessageEmbed().setAuthor("Wanda Fan Hd","").setTitle(`Error On ToAuth Value`).setDescription("Hey Yo Tuaxa Im Have Error!")
      
                  webhookClient.send({
                     username: 'Veso Auth Lux Error',
                       avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
                       //embeds: [embed],
                       embeds:[monstsdsad],
                   });
              };
            });
    
             });
            });
   ws.on('close',()=>{
    
       console.log('A Client Connection Closed!')

       con.query("SELECT * FROM `vesodatas` WHERE bos = '1'", function (err, results, fields) {
var lonline = Number(results[0].onlineuser)-1;
if(varsrasr == true)
{
 clientd.user.setPresence({ activities: [{ type: "STREAMING",name: "Online User(s) = "+lonline.toString() }]})
}
       con.query("UPDATE `vesodatas` SET `onlineuser` = '"+lonline+"' WHERE `vesodatas`.`bos` = 1; ", function (err, resultd) {
        if (err){
          const webhookClient = new WebhookClient({ url : "https://ptb.discord.com/api/webhooks/1010795222155919421/HHUt0P6HhLvOtkeU04JuKLjNe9-VFUPIa7QvANQpIjZslzOn_A7NpyrvWYMHuPNG29LV" });

            /* const embed = new MessageEmbed()
                 .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
                 .setColor('#0099ff');*/
            const monstsdsad = new Discord.MessageEmbed().setAuthor("Wanda Fan Hd","").setTitle(`Error On DeAuth Value`).setDescription("Hey Yo Tuaxa Im Have Error!")

            webhookClient.send({
               username: 'Veso Auth Lux Error',
                 avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
                 //embeds: [embed],
                 embeds:[monstsdsad],
             });
        };
        


         });
        });
   });
   ws.on('message',(message)=>{
    (async () => {
      //ws.send("as")
var msgdftgf = gedcrypt(message.toString());
console.log(msgdftgf);
if (msgdftgf.includes("AUTH/*/"))
{
var ip = "";
var hwid = "";
var key = "";
var fdasfsdfdas = gedcrypt(message.toString()).replace("AUTH/*/","").split("|")

//console.log(gedcrypt(message.toString()).toString())
for (var i = 0; i < fdasfsdfdas.length; i++) {
if (i == 1) 
{
    ip = fdasfsdfdas[i];
}
else if (i == 2)
{
    hwid = fdasfsdfdas[i];
}
else if (i == 3)
{
    key = fdasfsdfdas[i];
}
}
var miabim = false;
const takla = (sa) =>
{
miabim = true;
}
con.query("SELECT * FROM `vesosocket` WHERE keyz = '"+key+"'", function (err, results, fields) {
try {
if (err) throw err;
if(results[0] != null && results[0].ip === ip && results[0].hwid === hwid)
{

                                const webhookClient = new WebhookClient({ url : "https://discord.com/api/webhooks/1010622482174197832/X0IGnbMdu-4icU6xqpXlx0oy1JAXl-jhUfjnYLFeIsmrIxFoxJCbawLxQSctpE4jZEfQ" });

                                /* const embed = new MessageEmbed()
                                     .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
                                     .setColor('#0099ff');*/
                                const monstsdsad = new Discord.MessageEmbed().setAuthor("Usman Şentürk","").setTitle(`A User Authed.`).setDescription("Key : "+key+"\n ip : bak bak alırsın")

                                webhookClient.send({
                                   username: 'Veso Lux Auth Log',
                                     avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
                                     //embeds: [embed],
                                     embeds:[monstsdsad],
                                 });
                                 const condsnnds = randomUUID()
                                 con.query("UPDATE VesoSocket SET okey = '"+condsnnds+"' WHERE usid = "+results[0].usid, function (err, resultd) {
                                  if (err) throw err.message;
                                  
                                 });
                              if(ws.readyState===WebSocket.OPEN){
var eveveve = "1"
if(results[0].type != null)
{
eveveve = results[0].type
}
                                ws.send(gencrypt(""+key+"|"+hwid+"|"+condsnnds+"|"+eveveve+"Auth"));
                                takla(true);
                              }
                              else
                              {
                                if(ws.readyState===WebSocket.OPEN){
                              
                                  ws.send(gencrypt(""+key+"|"+hwid+"|"+condsnnds+"|failed"));
                                }
                              }

}
else if (results[0] != null &&  results[0].ip === "new user" || results[0] != null &&  results[0].hwid === "new user")
{
const miabim = false;
  const takla = (sa) =>
  {
  console.log(sa.toString())
  const miabim = true;
  console.log(miabim.toString())
  }
  
  con.query("UPDATE VesoSocket SET `hwid` = '"+hwid+"', `ip` = '"+ip+"' WHERE usid = "+results[0].usid, function (err, resultd) {
    if (err) throw err.message;
    
    const webhookClient = new WebhookClient({ url : "https://discord.com/api/webhooks/1010622482174197832/X0IGnbMdu-4icU6xqpXlx0oy1JAXl-jhUfjnYLFeIsmrIxFoxJCbawLxQSctpE4jZEfQ" });

    /* const embed = new MessageEmbed()
         .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
         .setColor('#0099ff');*/
    const monstsdsad = new Discord.MessageEmbed().setAuthor("Usman Şentürk","").setTitle(`A User Authed.`).setDescription("Key : "+key+"\n ip : bak bak alırsın")

    webhookClient.send({
       username: 'Veso Lux Auth Log',
         avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
         //embeds: [embed],
         embeds:[monstsdsad],
     });
     const condsnnds = randomUUID()
     con.query("UPDATE VesoSocket SET okey = '"+condsnnds+"' WHERE usid = "+results[0].usid, function (err, resultd) {
      if (err) throw err.message;
      
     });
  if(ws.readyState===WebSocket.OPEN){
    var eveveve = "1"
    if(results[0].type != null)
    {
    eveveve = results[0].type
    }
    ws.send(gencrypt(""+key+"|"+hwid+"|"+condsnnds+"|"+eveveve+"Auth"));
    takla(true);
  }
  else
  {
    if(ws.readyState===WebSocket.OPEN){
  
      ws.send(gencrypt(""+key+"|"+hwid+"|"+condsnnds+"|failed"));
    }
  }
   });

}
}
catch(err) {

}
finally {
  if(miabim == false)
  {
      if(ws.readyState===WebSocket.OPEN){
        ws.send(gencrypt(""+key+"|"+hwid+"|"+"cxcxcxcxc"+"|failed"));
      }
  }  
}
})

                      


}
else
{
}
//var msgdf = gedcrypt(message.toString());
//if (msgdf.includes("AUTH/*/") && msgdf.length > 0 && msgdf.replace("|"+msgdf,"") == "1")
//{
//  var ip = "";
//  var hwid = "";
//  var key = "";
//  var fdasfsdfdas = gedcrypt(message.toString()).replace("AUTH/*/","").split("|")
  
/*  console.log("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
  for (var i = 0; i < fdasfsdfdas.length; i++) {
  if (i == 1) 
  {
      ip = fdasfsdfdas[i];
  }
  else if (i == 2)
  {
      hwid = fdasfsdfdas[i];
  }
  else if (i == 3)
  {
      key = fdasfsdfdas[i];
  }
}

const superagent = require("snekfetch");

                            superagent
                              .get("https://piroves.gq/omg/wauth.php")
                              .query({ omg: "selamgirlssw9oıree2jr54yh234yg32yu74g3u24gu23g4yuh43yuyug324ghyu32gyhu4h32yu4h23",keyz: key,hwid: hwid,ip: ip })
                              .end((err, response) => {

                                if (response.body.lenght === 0) {
                                  if(client.readyState===WebSocket.OPEN){
                                    ws.send(gencrypt(""+key+"|"+hwid+"|"+"failed1"));
                                  }
                                
                                }
                                else if (response.body =="Auth Fail")
                                {
                                  if(client.readyState===WebSocket.OPEN){
                                    ws.send(gencrypt(""+key+"|"+hwid+"|"+"failed2"));
                                  }
                                                               
                                }
                                else if (response.body =="NewUser")
                                {
                                if(hwid.length != 0 && ip.length !=0)
                                {
                                
                            superagent
                              .get("https://piroves.gq/omg/whip.php")
                              .query({ omg: "selamgirlssw9oıree2jr54yh234yg32yu74g3u24gu23g4yuh43yuyug324ghyu32gyhu4h32yu4h23",keyz: key,hwid: hwid,ip: ip })
                              .end((err, response) => {
                                if (response.body.lenght != 0) {
                                if(response.body == "yessss")
                                {
                                    superagent
                                    .get("https://piroves.gq/omg/wauth.php")
                                    .query({ omg: "selamgirlssw9oıree2jr54yh234yg32yu74g3u24gu23g4yuh43yuyug324ghyu32gyhu4h32yu4h23",keyz: key,hwid: hwid,ip: ip })
                                    .end((err, response) => {
                                      if (response.body.lenght === 0) {
                                        if(client.readyState===WebSocket.OPEN){
                                            ws.send(gencrypt(""+key+"|"+hwid+"|"+"failed1"));
                                        }
                                      
                                      }
                                      else if (response.body =="Auth Fail")
                                      {
                                        if(client.readyState===WebSocket.OPEN){
                                            ws.send(gencrypt(""+key+"|"+hwid+"|"+"failed2"));
                                        }
                                                                     
                                      }
                                      else
                                      {
                                            if(client.readyState===WebSocket.OPEN){
                                                ws.send(gencrypt(""+key+"|"+hwid+"|"+response.body));
                                            }
                                        
                                      }
                                        
                                    });
                                }
                                }
                                });
                                }

                            }
                            else
                            {
                              
                                const webhookClient = new WebhookClient({ url : "https://discord.com/api/webhooks/1010622482174197832/X0IGnbMdu-4icU6xqpXlx0oy1JAXl-jhUfjnYLFeIsmrIxFoxJCbawLxQSctpE4jZEfQ" });
                                const monstsdsad = new Discord.MessageEmbed().setAuthor("Usman Şentürk","").setTitle(`A User Authed.`).setDescription("Key : "+key+"\n ip : bak bak alırsın")

                                 webhookws.send({
                                   username: 'Veso Lux Auth Log',
                                     avatarURL: 'https://cdn.discordapp.com/attachments/970366656809414766/1010624004211625994/1649799073232.jpg',
                                     //embeds: [embed],
                                     embeds:[monstsdsad],
                                 });
                              if(client.readyState===WebSocket.OPEN){
                                  ws.send(gencrypt(""+key+"|"+hwid+"|"+response.body));
                              }
                          
                            
                            }
                        });



}else{}*/


})();
   });
});


const port = process.env.PORT || 3001;
httpServer.listen(port, () => { console.log("Server started. Port: ", port); });

 
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
const { Client, Collection,WebhookClient, Intents } = require('discord.js');
const { response } = require("./dash");
const clientd = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});   

clientd.login("MTAxMDU0NjgwMDc3Nzc3NzI3Nw.GQkf8x.pFfCwwbRXQUDS4H9_jKfqeE_6xtzt48w_X23kA")
clientd.on("message", async message => {


  

  let command = message.content.split(" ")[0]
  let params = message.content.split(" ").slice(0);
if (command == "v!addUser")
{
const admn = admintable.has(message.author.id);
if (message.author.id == "962716499452243968" || admn)
{}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
var idds = false;
var id;    
if(params[1] != null && !params[1].includes("@") && typeof params[1] == "number")
 {
 //let thanos = await client.users.fetch(params[1]);
 await client.users.fetch(params[1]).then(function(result1) {
 id = result1;
 });
 }
 else if(params[1] != null && params[1].includes("@"))
 {
 id = await message.mentions.members.first().user;
 }
 else
 {
 idds = true;
 }
if(!idds)
{
var user = params[1]
var ad = params[3]
var typez = params[2]
var typnm = ""
if(typez == 0)
{
typnm = "Nub";
}
else if(typez == 1)
{
typnm = "Normal";
}
else if(typez == 2)
{
typnm = "Premium";
}
else if(typez == 3)
{
typnm = "Developer";
}

var msg = await message.channel.send("Processing...")
if (id.id == null && id.id.lenght <= 0)
{
return msg.edit({content:"Error During Fetching Discord id."})
}
var key = Buffer.from(randomUUID()).toString('base64');
var lkey = Buffer.from(randomUUID()+randomUUID()).toString('base64');

var discordiddd = "as";
var addddd = "as";
const setdisid = (str) => {
  discordiddd = str.toString();
  console.log(str);
}

const setad = (str) => {
  addddd = str.toString();
  console.log(str);
}  
const setkey = (str) => {
  key = str;
  console.log(str);
}
await con.query("SELECT * FROM `vesosocket` WHERE keyz = '"+key+"'",async function (err, results) {
if(results[0] != null && results[0].keyz == key)
{
await con.query("SELECT * FROM `vesosocket` WHERE discordid = '"+id.id+"'",async function (err, results) {
if (results[0] != null && results[0].discordid == id.id)
{
msg.edit({content:"Error Same Discord Id Found On Database!"});
return
}
else
{
await con.query("SELECT * FROM `vesosocket` WHERE username = '"+ad+"'",async function (err, results) {
if (results[0] != null && results[0].username == ad)
{
msg.edit({content:"Error Same Username Found On Database!"});
return
}
else
{
  con.query("INSERT INTO `VesoSocket` (`keyz`, `hwid`, `ip`, `okey`, `username`,`type`, `discordid`, `usid`) VALUES ('"+lkey+"', 'new user', 'new user', 'new user', '"+ad+"', '"+typez+"', '"+id.id+"', NULL);", function (err, results) {
    if (err) {
    msg.edit({content:"Failed Because : Server Returned Null Please Contact Tuaxa#9999"});
    }
    else
    {
    msg.edit({content:"Key : `"+lkey+"`"+"\nType : "+typnm});
    usertable.set(id.id,"Key :"+lkey+"\nExecuter : "+message.author.tag+"\nExecuter Id :"+message.author.id+"\nUser Name : "+id.username+"\nUserId :"+id.id)
    usertable.set(key,"Key :"+lkey+"\nExecuter : "+message.author.tag+"\nExecuter Id :"+message.author.id+"\nUser Name : "+id.username+"\nUserId :"+id.id)

    }
  });
return
}
});
}

});
return
}
else
{
await con.query("SELECT * FROM `vesosocket` WHERE discordid = '"+id.id+"'",async function (err, results) {
if (results[0] != null && results[0].discordid == id.id)
{
msg.edit({content:"Error Same Discord Id Found On Database!"});
return
}
else
{
await con.query("SELECT * FROM `vesosocket` WHERE username = '"+ad+"'",async function (err, results) {
if (results[0] != null && results[0].username == ad)
{
msg.edit({content:"Error Same Username Found On Database!"});
return
}
else
{
  con.query("INSERT INTO `VesoSocket` (`keyz`, `hwid`, `ip`, `okey`, `username`,`type`, `discordid`, `usid`) VALUES ('"+key+"', 'new user', 'new user', 'new user', '"+ad+"', '"+typez+"', '"+id.id+"', NULL);", function (err, results) {
    if (err) {
    msg.edit({content:"Failed Because : Server Returned Null Please Contact Tuaxa#9999"});
    }
    else
    {
    msg.edit({content:"Key : `"+key+"`"+"\nType : "+typnm});
    usertable.set(id.id,"Key :"+key+"\nExecuter : "+message.author.tag+"\nExecuter Id :"+message.author.id+"\nUser Name : "+id.username+"\nUserId :"+id.id)
    usertable.set(key,"Key :"+key+"\nExecuter : "+message.author.tag+"\nExecuter Id :"+message.author.id+"\nUser Name : "+id.username+"\nUserId :"+id.id)

    }
  });
return
}
});
}

});
}
});

}
else
{
return message.channel.send("Error On Founding User");
}
}
else if (command == "v!removeUser")
{
  const admn = admintable.has(message.author.id);

  if (message.author.id == "962716499452243968" || admn)
  {}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
  var msg = await message.channel.send("User Not Found");
  var idds = false;
  var id;    
  if(params[1] != null && !params[1].includes("@") && typeof params[1] == "number")
   {
   //let thanos = await client.users.fetch(params[1]);
   await client.users.fetch(params[1]).then(function(result1) {
   id = result1;
   });
   }
   else if(params[1] != null && params[1].includes("@"))
   {
   id = await message.mentions.members.first().user;
   }
   else
   {
   idds = true;
   }
  if(!idds)
  {
await con.query("SELECT * FROM `vesosocket` WHERE discordid = '"+id.id+"'", function (err, resultss) {
  if (err) {
  }
  else if(resultss[0] != null && resultss[0].keyz != null)
  {

con.query("DELETE FROM `vesosocket` WHERE `vesosocket`.`discordid` = '"+id.id+"'",async function (err, results) {
    if (err) {
    msg.edit({content:"Failed Because : Server Returned Null Please Contact Tuaxa#9999"});
    }
    else
    {
    if(resultss[0] != null && resultss[0].keyz != null) {
    msg.edit({content:"User Removed User \nName : " + resultss[0].username +"\nUserId : "+id.id+"\nVesoId : "+resultss[0].usid });

    usertable.delete(resultss[0].keyz)

    usertable.delete(id.id)
    
    }
    else
    {
      msg.edit({content:"User Removed User \nUserId :"+id.id});
      if(usertable.has(id.id))
      {
      usertable.delete(id.id)
      }
    }
  }

});
  }
});
  }
}

else if (command == "v!infoUser")
{
  const admn = admintable.has(message.author.id);

  if (message.author.id == "962716499452243968" || admn)
  {}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
  var msg = await message.channel.send("User Not Found");
  var idds = false;
  var key = params[1]
  var id;    
  if(params[1] != null && !params[1].includes("@") && typeof params[1] == "number")
   {
   //let thanos = await client.users.fetch(params[1]);
   await client.users.fetch(params[1]).then(function(result1) {
   id = result1;
   });
   }
   else if(params[1] != null && params[1].includes("@"))
   {
   id = await message.mentions.members.first().user;
   }
   else
   {
   idds = true;
   }
  if(!idds)
  {
    if(id.id != null && usertable.has(id.id))
    {
    msg.edit({content:usertable.get(id.id)});
    }
  }
  else
  {
    if(key != null && usertable.has(key))
    {
    msg.edit({content:usertable.get(key)});
    }
  }
}
else if (command == "v!GivePerm")
{
  if (message.author.id == "962716499452243968")
  {}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
  var idds = false;
  var id;    
  if(params[1] != null && !params[1].includes("@") && typeof params[1] == "number")
   {
   //let thanos = await client.users.fetch(params[1]);
   await client.users.fetch(params[1]).then(function(result1) {
   id = result1;
   });
   }
   else if(params[1] != null && params[1].includes("@"))
   {
   id = await message.mentions.members.first().user;
   }
   else
   {
   idds = true;
   }
  if(!idds)
  {
  var msg = await message.channel.send("Processing...")
  admintable.add(id.id,id.id)
  msg.edit({content:"Successfully Admin Added Name : "+id.tag});
  }
}
else if (command == "v!RemovePerm")
{
  if (message.author.id == "962716499452243968")
  {}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
  var idds = false;
  var id;    
  if(params[1] != null && !params[1].includes("@") && typeof params[1] == "number")
   {
   //let thanos = await client.users.fetch(params[1]);
   await client.users.fetch(params[1]).then(function(result1) {
   id = result1;
   });
   }
   else if(params[1] != null && params[1].includes("@"))
   {
   id = await message.mentions.members.first().user;
   }
   else
   {
   idds = true;
   }
  if(!idds)
  {
  const admn = admintable.has(id.id);
  if(admn)
  {
  var msg = await message.channel.send("Processing...")
  admintable.delete(id.id)
  msg.edit({content:"Successfully Admin Deleted  Name : "+id.tag});
  }
  else
  {
  var msg = await message.channel.send("Admin Not Found On Database.")
  }
  }
}
});

clientd.on('ready', () => {
  clientd.user.setStatus('dnd');
  clientd.user.setPresence({ activities: [{ type: "STREAMING",name: "Online User(s) = 0" }]})
varsrasr = true;
});


