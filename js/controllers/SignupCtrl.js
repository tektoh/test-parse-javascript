(function(){define(["angular","parse"],function(e,n){return e.module("controllers.SignupCtrl",[]).controller("SignupCtrl",["$scope",function(e){return e.signup=function(){var r;return r=new n.User,r.set("username",e.username),r.set("password",e.password),r.set("email",e.email),r.set("emailVerified ",!1),r.signUp(null,{success:function(e){return console.log(e)},error:function(e,n){return console.log(e),console.log(n)}})}}])})}).call(this);
//# sourceMappingURL=../../maps/controllers/SignupCtrl.js.map