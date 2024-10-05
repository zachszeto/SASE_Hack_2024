const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { google } = require("googleapis");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.gmailFetch = functions
  .region("us-east1")
  .runWith({
    memory: "128MB",
  })
  .https.onCall((data, context) => {
    if (!context.auth.uid) {
      return;
    }
    // Write your code below!
    console.log("pls");
    // Write your code above!
  });
