const express = require("express");
const http = require("http");
const path = require("path");
const {Discord,WebhookClient,ShardingManager,MessageEmbed,Intents} = require('discord.js');
const db = require("quick.db")
const app = express();
app.use(express.static(path.join(__dirname, "./public")));
app.get("/", (req, res) => { res.sendFile(path.join(__dirname, "index.html")) });

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

function sencrypt(strin)
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
var asdasdsafasfas = "";
var sfsdfdsgfdsgdfh = base64data2;
var buffer = new Buffer(sfsdfdsgfdsgdfh, 'utf16le');
for (var i = 0; i < buffer.length; i++) {
  if(buffer[i] > 0)
  {
    asdasdsafasfas += "\\"+buffer[i]*21323213123;
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
return ".:/TuaxaEncoder\\:."+fdsfsdfdsf;

}

function sdecrypt(strin)
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
  var fdasfsdfdas = decryptedv2.split("\\")
  var jhgjkugbdfg = "";
  for (var i = 0; i < fdasfsdfdas.length; i++) {
    jhgjkugbdfg += String.fromCharCode(fdasfsdfdas[i]/21323213123);
  }
  var decryptedv3 = Buffer.from(jhgjkugbdfg, 'base64').toString('ascii')
  var decryptedv4 = Buffer.from(decryptedv3, 'base64').toString('ascii')
  var asdasdsadas = decryptedv4.split("pr")
  var fdgdfgdf = "";
  for (var i = 0; i < asdasdsadas.length; i++) {
    fdgdfgdf += String.fromCharCode(asdasdsadas[i]/21323213123);
  }
  return fdgdfgdf;
}

wss.on('connection',(ws)=>{
   console.log('A Client Connected!')
   ws.on('close',()=>{
       console.log('A Client Connection Closed!')
   });
   ws.on('message',(message)=>{
       console.log('Message recieved. (%s)', message);
//if (tedcrypt_ag(message.toString()).match("AUTH/*/"))
//{
//var fdasfsdfdas = tedcrypt_ag(message.toString()).replace("AUTH/*/","").split("|")
  //var jhgjkugbdfg = "";
  //for (var i = 0; i < fdasfsdfdas.length; i++) {
//console.log(i+" "+fdasfsdfdas[i])
  /*}
}*/
      /* wss.clients.forEach(function each(client){
           if(client!==ws&&client.readyState===WebSocket.OPEN){
               client.send(message);
           }
       });*/
       const webhookClient = new WebhookClient({ url : "https://discord.com/api/webhooks/1010245899538153483/LqvvJ8zcaM8P6rklLqSjVA8dOevjt9D1hvJ8GrW5c06KLdyj9fuBGqhkkpqZ0zz1GnlY" });

      /* const embed = new MessageEmbed()
           .setTitle('New Message').addField("Shard Number : ",shard.id + " Aviable",false)
           .setColor('#0099ff');*/
       
       webhookClient.send({
         username: 'Veso Lux Chat (BETA)',
           avatarURL: 'https://cdn.discordapp.com/attachments/990803291250237502/1010245595740524605/Ekran_goruntusu_2022-08-19_161036.png',
           //embeds: [embed],
           content : message.toString()+" ",
       });
       wss.clients.forEach(function each(client){
        if(client.readyState===WebSocket.OPEN){
            client.send(message);
        }
    });
   });
});



const port = process.env.PORT || 3000;
httpServer.listen(port, () => { console.log("Server started. Port: ", port); });

