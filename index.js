const express = require('express');
const cors = require('cors')
const bodyParser = require("body-parser")
const mysql = require('mysql');

// const {JsonDB} = require('node-json-db');
// const {Config} = require('node-json-db/dist/lib/JsonDBConfig');
// const path = require('path');

// création de la connexion à la base de données mySQL
const db = mysql.createConnection({
    host:'localhost',
    user: 'root',
    password: 'admin2020',
    database: 'meetinvestdb'
});

// Connexion à la base de données
db.connect((err) => {
    if(err){
        throw err;
    }
    console.log('MySql Connected');
});

const app = express();

// Utilisation du middleware cors pour éviter les problèmes de Same Origin
app.use(cors());

// Utilisation du middleware body-parser pour convertir
app.use(bodyParser.json())
// Nathan nous avait dit qu'il était conseillé de mettre ça...
// mais je ne sais plus bien pourquoi...
// app.use(bodyParser.urlencoded
// ({extended: true})
// );

// Selectionner tous les projets **
app.get('/projets', (req, res) => {
    let sql = 'SELECT * FROM projets';
    db.query(sql, (err, results) => {
        if(err) throw err;
        res.status(200).send(results);
    })
});

// Selectionner un projet par identifiant **
app.get('/projet/:id', (req, res) => {
    let sql = "SELECT * FROM projets WHERE id=" + req.params.id;
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.status(200).send(result);
    })
});

// Selectionner les projets par category **
app.get('/projetsCat/:category', (req, res) => {
  let sql = "SELECT * FROM projets WHERE category =" + "'" + req.params.category + "'";
  db.query(sql, (err, result) => {
      if(err) throw err;
      res.status(200).send(result);
  })
});

// Selectionner les trois derniers projets **
app.get('/projets3', (req, res) => {
    let sql = "SELECT * FROM projets ORDER BY id DESC LIMIT 3";
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.status(200).send(result);
    })
});

// Envoyer tous les champs du formulaire d'inscription entrepreneur
// sur la BDD / table entrepreneurs : requête POST **
app.post("/entrepreneurs", (req, res) => {

      console.log(req.body);
      let firstnameval = req.body.firstname;
      let lastnameval = req.body.lastname;
      let addressval = req.body.address;
      let cpval = req.body.cp;
      let cityval = req.body.city;
      let countryval = req.body.country;
      let phoneval = req.body.phone;
      let mailval = req.body.mail;
      let corporatenameval = req.body.corporate_name;
      let siretval = req.body.siret;
      let sharecapitalval = req.body.share_capital;
      let salesval = req.body.sales;
      let financialneedsval = req.body.financial_needs;
      let otherneedsval = req.body.other_needs;
      let projecttitleval = req.body.project_title;
      let categoryval = req.body.category;
      let descriptionval = req.body.description;
      let webval = req.body.web;
      let videolinkval = req.body.video_link;
      let passwordval = req.body.password;

      let sql = "INSERT INTO entrepreneurs (firstname, lastname, address, cp, city, country, phone, mail, corporate_name, siret, share_capital, sales, financial_needs, other_needs, project_title, category, description, web, video_link, password) VALUES ('" + firstnameval + "', '" + lastnameval + "', '" + addressval + "', '" + cpval + "', '" + cityval + "', '" + countryval + "', '" + phoneval + "', '" + mailval + "', '" + corporatenameval + "', '" + siretval + "', '" + sharecapitalval + "', '" + salesval + "', '" + financialneedsval + "', '" + otherneedsval + "', '" + projecttitleval + "', '" + categoryval + "', '" + descriptionval + "', '" + webval + "', '" + videolinkval + "', '" + passwordval + "')";
      console.log(sql);
      db.query(sql, (err, result) => {
        if(err) throw err;
        res.status(200).send(result);
      })
    }
);

// requête POST sur la table projets : **
app.post("/projets", (req, res) => {

    console.log(req.body);
    let titleval = req.body.title;
    let categoryval = req.body.category;
    let descriptionval = req.body.description;
    let financialneedsval = req.body.financial_needs;
    let otherneedsval = req.body.other_needs;
    let videolinkval = req.body.video_link;
    let webval = req.body.web;

    let sql = "INSERT INTO projets (title, category, description, financial_needs, other_needs, video_link, web) VALUES ('" + titleval + "', '" + categoryval + "', '" + descriptionval + "', '" + financialneedsval + "', '" + otherneedsval + "', '" + videolinkval + "', '" + webval + "')";

    db.query(sql, (err, result) => {
        if(err) throw err;
        res.status(200).send(result);
    })
}
);

// requête POST sur la table investisseurs : **
app.post("/investisseurs", (req, res) => {

    console.log(req.body);
    let firstnameval = req.body.firstname;
    let lastnameval = req.body.lastname;
    let addressval = req.body.address;
    let cpval = req.body.cp;
    let cityval = req.body.city;
    let countryval = req.body.country;
    let phoneval = req.body.phone;
    let mailval = req.body.mail;
    let riskval = req.body.risk;
    let categoriesval = req.body.categories;
    let amountinvestval = req.body.amount_to_invest;
    let profitabilityval = req.body.profitability;
    let whyinvestval = req.body.why_invest;
    let passwordval = req.body.password;

    let sql = "INSERT INTO investisseurs (firstname, lastname, address, cp, city, country, phone, mail, risk, amount_to_invest, profitability, categories, why_invest, password) VALUES ('" + firstnameval + "', '" + lastnameval + "', '" + addressval + "', '" + cpval + "', '" + cityval + "', '" + countryval + "', '" + phoneval + "', '" + mailval + "', '" + riskval + "', '" + amountinvestval + "', '" + profitabilityval + "', '" + categoriesval + "', '" +  whyinvestval + "', '" + passwordval + "')";

    db.query(sql, (err, result) => {
        if(err) throw err;
        res.status(200).send(result);
    })
});

// Create entrepreneurs table : fait sur Workbench : plus sécure
// app.get('/createentrepreneurstable', (req, res) => {
//   let sql = 'CREATE TABLE entrepreneurs (id INT AUTO_INCREMENT, firstname VARCHAR(255), lastname VARCHAR(255), address VARCHAR(255), cp INT, city VARCHAR(255), country VARCHAR(255), mail VARCHAR(255), phone INT, raison_sociale VARCHAR(255), siret INT, capital_social INT, ca INT, PRIMARY KEY(id)';
//   db.query(sql, (err, result) => {
//     if(err) throw err;
//     console.log(result);
//     res.send('Entrepreneurs table created');
//   });
// });

// Connexion Workbench : donner un nom à la connexion de MySQL server
// host : localhost (ligne 6 de ce doc)
// port : 3306 (par défaut pour MySQL ; le port 3000 est le port d'écoute de Node (tout en bas sur ce doc : app.listen))
// user + password : celui indiqué ci-dessus en lignes 5 à 10
// Clic Test connection

// Table projets (créée directement sur Workbench) :
// CREATE TABLE projets (id INT AUTO_INCREMENT PRIMARY KEY, titre VARCHAR(255), description TEXT, financial_needs INT, other_needs TEXT, img VARCHAR(255), logo VARCHAR(255))";

// Table investisseurs (créée directement sur Workbench) :
// CREATE TABLE investisseurs (id INT AUTO_INCREMENT PRIMARY KEY, firstname VARCHAR(255), lastname VARCHAR(255), address VARCHAR(255), cp INT, phone INT, country VARCHAR(255), mail VARCHAR(255), risk VARCHAR(255), amount-to-invest INT, profitability INT, why_invest VARCHAR(255))";


app.listen('3000', () => {
    console.log('server started on port 3000');
})
