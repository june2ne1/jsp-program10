/**
 * 자바 객체 생성방법
 * 1. 생성자  Account account = new Account();
 * 2. 딥카피  AccountService service = new AccountServiceImpl();
 * 3. 쉘로우카피  Account deposit = account.getDeposit();
 * 
 * 자바스크립트 객체 생성방법
 * 1. 생성자함수 : var obj = new Object(); var func = new Function();
 * 2. 객체리터럴 : 
 * 		var foo = {name : 'foo', age : 30, gender : '남자'}
 * 3.함수표현식 :
 * 	    var add = function(x,y){
 *      }
 */
var rps = {};
rps.display = function(rps) {
	alert('사용자가 선택한 가위바위보 = '+ rps.value);
}



