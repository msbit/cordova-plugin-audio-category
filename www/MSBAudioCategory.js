const exec = require('cordova/exec');

class MSBAudioCategory {
  static getCategory () {
    return new Promise((resolve, reject) => {
      exec(resolve, reject, 'MSBAudioCategory', 'getCategory');
    });
  }

  static setCategory (category) {
    return new Promise((resolve, reject) => {
      exec(resolve, reject, 'MSBAudioCategory', 'setCategory', [category]);
    });
  }
}

module.exports = MSBAudioCategory;
