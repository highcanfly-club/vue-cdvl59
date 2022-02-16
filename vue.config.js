const gitlog = require("gitlog").default;
const fs = require('fs');

// Option 1: Just use the function, returned commit type has specified fields
const commits = gitlog({
  repo: ".",
  number: 1,
  fields: ["authorDate"],
});

const commit = {
  vue_cdvl59: (new Date(commits[0].authorDate)).toISOString(),
};

process.env.VUE_APP_GIT_LAST_COMMIT = new Date(commits[0].authorDate);

fs.writeFile('./commit.json',
  JSON.stringify(commit),
  'utf8', function (err) {
    if (err) return console.log(err);
  }
);

var path = require('path');

module.exports = {
  runtimeCompiler: true,
  configureWebpack: {
    devtool: 'source-map',
  },
  chainWebpack(config) {
    config.resolve.alias.set( 'vue', path.resolve('./node_modules/vue')); //if using yarn rather than npm
    }
};
