var exec = require('cordova/exec');

var MSBAudioCategory =  {
  getCategory: function() {
    exec(function(category){
      console.log(category);
    }, function(){}, 'MSBAudioCategory', 'getCategory');
  },
  setCategory: function(category) {
    exec(function(){}, function(error){
      console.log(error);
    }, 'MSBAudioCategory', 'setCategory', [category]);
  }
};
module.exports = MSBAudioCategory;
