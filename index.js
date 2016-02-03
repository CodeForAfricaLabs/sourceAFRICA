var request = require('request'),
    fs = require('fs');

var url = 'https://openexchangerates.org/api/latest.json';
var app_id = process.argv[2];

request({
    url: url,
    qs: {'app_id': app_id}
  }, function (error, response, body) {

    if (!error && response.statusCode === 200) {
      fs.writeFileSync('public/javascripts/rates.json', body);
    }
})
