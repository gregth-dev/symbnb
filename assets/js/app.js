"use strict";
import '../css/bootstrap.min.css';
import '../css/app.scss';
let $ = require('jquery');
// Permet d'acceder a JQuery partout, vu que webpack encapsule JQuery dans une fonction 
// si on ne fait pas ça il est bloqué dans le scope de la fonction

global.$ = global.jQuery = $;

require('bootstrap')


