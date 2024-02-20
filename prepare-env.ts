import { gitlogPromise, GitlogOptions } from "gitlog";
import * as fs from 'node:fs';

// Option 1: Just use the function, returned commit type has specified fields
const commits = await gitlogPromise({
  repo: ".",
  number: 1,
  fields: ["authorDate"],
} as GitlogOptions);
  
const commit = {
  vue_cdvl59: new Date(commits[0].authorDate),
};

process.env.VUE_APP_GIT_LAST_COMMIT = (new Date(commits[0].authorDate)).toISOString();

fs.writeFile('./commit.json',
  JSON.stringify(commit),
  'utf8', function (err) {
    if (err) return console.log(err);
  }
);