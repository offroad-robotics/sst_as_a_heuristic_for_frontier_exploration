
"use strict";

let Gpgsa = require('./Gpgsa.js');
let Sentence = require('./Sentence.js');
let GpgsvSatellite = require('./GpgsvSatellite.js');
let Gprmc = require('./Gprmc.js');
let Gpgst = require('./Gpgst.js');
let Gpgsv = require('./Gpgsv.js');
let Gpgga = require('./Gpgga.js');

module.exports = {
  Gpgsa: Gpgsa,
  Sentence: Sentence,
  GpgsvSatellite: GpgsvSatellite,
  Gprmc: Gprmc,
  Gpgst: Gpgst,
  Gpgsv: Gpgsv,
  Gpgga: Gpgga,
};
