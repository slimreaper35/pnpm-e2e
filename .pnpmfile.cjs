const fs = require("fs");
const path = require("path");

const filePath = path.join(__dirname, "PNPMFILE.txt");
fs.writeFileSync(filePath, "My code was executed\n");

module.exports = {
  hooks: {
    readPackage(pkg) {
      return pkg;
    },
  },
};
