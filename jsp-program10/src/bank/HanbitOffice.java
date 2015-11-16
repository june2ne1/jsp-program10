package bank;

import java.util.Scanner;

public class HanbitOffice {
	public static void main(String[] args) {
		AdminService service = new AdminServiceImpl(1000);
		// 인터페이스 객체 = new 인터페이스를 구현한클래스생성자
		AccountVO account = new AccountVO();
		Scanner scanner = new Scanner(System.in);
		
		while (true) {
			System.out.println("관리자화면 : 1.계좌개설 2.검색(계좌번호) 3.검색(이름) 4.총계좌수 5.해지 6.종료");
			int key = scanner.nextInt();
			
			switch (key) {
			case 1:
				System.out.println("계좌번호입력");
				int accountNo = scanner.nextInt();
				System.out.println("이름 입력");
				String name = scanner.next();
				System.out.println("입금액 입력");
				int restMoney = scanner.nextInt();
				System.out.println("비밀번호를 입력해주세요");
				String password = scanner.next();
				System.out.println(service.openAccount(accountNo, name, password, restMoney));
				break;
			
			case 2:
				System.out.println("검색할 계좌번호를 입력해주세요.");
				int searchaccountNo = scanner.nextInt();
//				Account result = service.searchAccountByAccountNo(searchaccountNo);
//				System.out.println(result.toString());
				System.out.println(service.searchAccountByAccountNo(searchaccountNo));
				break;
			case 3:
				System.out.println("검색할 이름을 입력해주세요.");
				String searchName = scanner.next();
				AccountVO [] arr = service.searchAccountsByName(searchName);
				for (int i = 0; i < arr.length; i++) {
					System.out.println(arr[i]);
				}
				
				break;
			case 4:
				System.out.println(service.countAll());
				
				break;
			case 5:
				System.out.println("해지할 계좌번호를 입력해주세요");
				int closeAccount = scanner.nextInt();
				System.out.println(service.closeAccount(closeAccount));
				break;
				
			case 6:
				return;
			default:
				System.out.println("입력이 잘못되었습니다. 하실 업무를 다시 입력해주세요");
				break;

			}

		}
	}
}
