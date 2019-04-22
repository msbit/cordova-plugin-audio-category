var exec = require('cordova/exec');

var MSBAudioCategory = {
  getCategory: function() {
    return new Promise(function(resolve, reject) {
      exec(resolve, reject, 'MSBAudioCategory', 'getCategory');
    });
  },
  setCategory: function(category) {
    return new Promise(function(resolve, reject) {
      exec(resolve, reject, 'MSBAudioCategory', 'setCategory', [category]);
    });
  }
};
module.exports = MSBAudioCategory;
