// Your web app's Firebase configuration
var firebaseConfig = {
    apiKey: "AIzaSyDlG0wAh6qBxiVsDaj5qhmIOOd47WRpBRo",
    authDomain: "taeyangchecklist.firebaseapp.com",
    databaseURL: "https://taeyangchecklist.firebaseio.com",
    projectId: "taeyangchecklist",
    storageBucket: "taeyangchecklist.appspot.com",
    messagingSenderId: "165098311812",
    appId: "1:165098311812:web:15a37f632379f28f01f2d1",
    measurementId: "G-7TW34H1MZ7"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
var storage = firebase.app().storage("gs://taeyangchecklist.appspot.com");
var filename = "${detail.phot_oooo}";
var download_url = firebase.storage().ref().child(filename);
console.log("download_url : "+download_url);
