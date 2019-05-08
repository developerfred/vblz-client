// This file includes all the tests and is used for browser testing.

// It is webpack'd into main.test.pack.js and included in mocha.html.

require('../ecdsa_secp256k1.test.js');
require('../swarmClient/test/speed.test.js');
require('../swarmClient/test/main.test.js');
require('../test/main.test.js');