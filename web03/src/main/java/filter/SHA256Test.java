package filter;

import java.security.NoSuchAlgorithmException;

public class SHA256Test {
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String pwd = "a65e2";
		String cryPwd = SHA256.encrypt(pwd);
		System.out.println(pwd+" -> "+cryPwd);
	}
}
