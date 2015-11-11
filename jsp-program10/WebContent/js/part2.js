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
var part2 = {};
part2.display = function(id,pw,nation) {
	alert("입력한 아이디는 " + id + "이고 패스워드는 " + pw + "입니다.\n당신의 출신국가는 " + nation + "입니다.");
}

part2.check = function(subjects) {
	for (var i = 0; i < subjects.length; i++) {
		if (subjects[i].checked == true) {
			alert(subject[i].value+"가 선택되었습니다.");
			break;
		}
	}
}
part2.checkbox = function(subjects) {
	var arr = [];
	for (var i = 0; i < subjects.length; i++) {
		if (subjects[i].checked == true) {
			arr.push(subjects[i].value);
		}
	}
	for (var i = 0; i < arr.length; i++) {
		console.dir(arr[i]);
	}
	
	alert(arr);
	
}
part2.select = function(subject) {
	var index = subject.selectedIndex;
	if (index == 0) {
		alert('과목을 선택하세요');
		return false;
	}
	var list = subject.options[index].text; /*프로퍼티가 value 가 아닌 text 인 것에 주의 !!*/
	var val = subject.options[index].value; /*프로퍼티가 value 주의 !!*/
	var result = '';
	
	result += "선택항목 인덱스 : " +index+"\n";
	result += "선택항목 리스트 : " +list+"\n";
	result += "선택항목 값 : " +val+"\n";
	
	alert(result);
}



