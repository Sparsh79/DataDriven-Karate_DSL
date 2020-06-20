function() {
   var System = Java.type('java.lang.System');
     // base config
var config = {
// for demo I've used a demo rest API with fake data from dummy.restapiexample.com
    dummyBaseUrl: 'http://dummy.restapiexample.com'
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}