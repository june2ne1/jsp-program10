package bank;

import java.util.Scanner;

public class HanbitBank {
	public static void main(String[] args) {
		Bank service = BankService.getInstance();
		Account account = new Account();
		Scanner scanner = new Scanner(System.in);
		
		while (true) {
			System.out.println("진행하실 업무를 정해주세요 : 1.계좌개설 2.입금 3.출금 4.조회 5.종료");
			int key = scanner.nextInt();
			
			switch (key) {
			case 1:
				System.out.println("이름을 입력해주세요");
				String name = scanner.next();
				System.out.println("비밀번호를 입력해주세요");
				String password = scanner.next();
				System.out.println(service.open(name, password));
				break;
			case 2:
				System.out.println("입금할 금액을 입력해주세요");
				int inMoney = scanner.nextInt();
				System.out.println(service.deposit(inMoney));
				break;
			case 3:
				System.out.println("출금할 금액을 입력하세요.");
				int outMoney = scanner.nextInt();
				System.out.println(service.withdraw(outMoney));
				
				break;
			case 4:
				System.out.println(service.search());
				break;
			case 5:
				return;
			default:
				System.out.println("입력이 잘못되었습니다. 하실 업무를 다시 입력해주세요");
				break;

			}

		}
	}
}
