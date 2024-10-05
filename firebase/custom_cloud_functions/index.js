const admin = require("firebase-admin/app");
admin.initializeApp();

const gmailFetch = require("./gmail_fetch.js");
exports.gmailFetch = gmailFetch.gmailFetch;
