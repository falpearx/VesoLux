const express = require("express");
const http = require("http");
const path = require("path");
const {Discord,Client,WebhookClient,ShardingManager,MessageEmbed,Intents} = require('discord.js');
const db = require("quick.db")
const avabiletable = new db.table("aviable")
const admintable =  new db.table("admin")
const aviablelogtable =  new db.table("aviablelog")

const app = express();
const url = require('url');
app.use(express.static(path.join(__dirname, "./public")));

const httpServer = http.createServer(app);
const WebSocket = require("ws");
const SocketServer = require("ws").Server;
const fs = require("fs");
const { ifError } = require("assert");
const wss = new SocketServer({ server: httpServer });

app.use('/dashboard', require('./dash'));
app.use('/purchase', require('./purchase'));
app.use('/features', require('./features'));
app.get('/login', require('./dash'));
app.get('/logout', require('./dash'));
app.get('/authorize', require('./dash'));
app.get('/resethwid', require('./dash'));
app.get('/resetip', require('./dash'));
app.get('/gscript', require('./dash'));

app.get('/discord', (req,res) => {
res.redirect("https://discord.gg/9WTYQbrC")
});
app.get('/',require('./index'));
//DB TABLES
var userauthtable =  new db.table("users")
var stats =  new db.table("stat")


var authedvbert = 0;
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

wss.on('connection',(ws,req)=>{
    const location = url.parse(req.url, true);
    if(location.pathname == "/auth")
    {
     
     
    }
    else if(location.pathname == "/chat")
    {
        ws.on('close',()=>{
            console.log('A Client Connection Closed!')
        });
        ws.on('message',(message)=>{
            console.log('Message recieved. (%s)', message.toString());
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
            var key = "";
            var usid = "";
            var dpname = "";
            var msgf = "";

            var fdasfsdfdas = gedcrypt(message.toString()).replace("1|Auth","").split("|")
            
            //console.log(gedcrypt(message.toString()).toString())
            for (var i = 0; i < fdasfsdfdas.length; i++) {
            if (i == 1) 
            {
                key = fdasfsdfdas[i];
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
            
            webhookClient.send({
              username: 'Veso Lux Chat (BETA)',
                avatarURL: 'https://cdn.discordapp.com/attachments/990803291250237502/1010245595740524605/Ekran_goruntusu_2022-08-19_161036.png',
                //embeds: [embed],
                content : dpname+" : "+msgf,
            });
            wss.clients.forEach(function each(client){
             if(client.readyState===WebSocket.OPEN){
                 client.send(dpname+" : "+msgf);
             }
         });

       /* }        
        else
        {
if (ws.readyState == WebSocket.OPEN)
{
    console.log("1")
    ws.close()
}
        }
        }
        else
        {
if (ws.readyState == WebSocket.OPEN)
{
    console.log("2")
    ws.close()
}
        }*/
        });
    }
  });
  


const port = process.env.PORT || 80;
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
const clientd = global.client = new Client({	allowedMentions: { parse: ['users', 'roles'], repliedUser: true },
  intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_PRESENCES, Intents.FLAGS.GUILD_MESSAGES, Intents.FLAGS.GUILD_MEMBERS]
 
});   
clientd.login("MTAxMDc2MzE0MjM2NTcyNDcwMg.G6cyH6.7XWQBftxfE5pqwQvW3l7w6gu_zOJ4Xq9G-kh30")
clientd.on("message", async message => {
  

  let command = message.content.split(" ")[0]
  let params = message.content.split(" ").slice(0);
if (command == "v!fixAviables")
{
//const admn = admintable.has(message.author.id);
if (message.author.id == "962716499452243968")
{}else{return message.channel.send("UnAuthrized Acces. GO Cri");}
avabiletable.fetchAll().forEach(function(s,d,f){
avabiletable.set(s.ID,"1")
})
return message.channel.send("All Of Aviable (Hwid(s),Ip(s)) Setted To '1'")
}
if (command == "v!addAviables")
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
if (avabiletable.has(id.id+"_hwid"))
{
avabiletable.set(id.id+"_hwid","1")
}
if (avabiletable.has(id.id+"_ip"))
{
avabiletable.set(id.id+"_ip","1")
}
aviablelogtable.set(id.id,"Executer Tag :"+message.author.tag+"\nExecuter Id"+message.author.id+"\nChanged User Tag : "+id.tag+"\nChanged User Id : "+id.id)
return message.channel.send("All Of Aviable (Hwid(s),Ip(s)) Setted To '1'")
}
}
if (command == "v!logAvaibles")
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
if(aviablelogtable.has(id.id))
{
return message.channel.send("Log Found : \n"+aviablelogtable.get(id.id))
}
}
}
});

clientd.on('ready', () => {
  clientd.user.setStatus('dnd');
  clientd.user.setPresence({ activities: [{ type: "STREAMING",name: "https://vesolux.gq" }]})
});



