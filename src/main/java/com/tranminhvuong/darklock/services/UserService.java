
package com.tranminhvuong.darklock.services;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tranminhvuong.darklock.Utility;
import com.tranminhvuong.darklock.dto.Email;
import com.tranminhvuong.darklock.entities.Users;
import com.tranminhvuong.darklock.repositories.UsersRepo;

@Service
public class UserService {

	@PersistenceContext
	protected EntityManager entityManager;

	@Autowired
	private UsersRepo usersRepo;

	@Autowired
	private JavaMailSender mailSender;

	public Users loadUserByUsername(String userName) {
		try {
			String jpql = "Select u From Users u Where u.username='" + userName + "'";
			Query query = entityManager.createQuery(jpql, Users.class);
			return (Users) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	Calendar cal = Calendar.getInstance();

	public boolean checkUsername(Users users) {
		List<Users> listUsers = new ArrayList<Users>();
		listUsers = usersRepo.findAll();
		for (Users checkUser : listUsers) {
			if (!users.getUsername().trim().isEmpty() && users.getUsername().equals(checkUser.getUsername())) {
				return true;
			}
		}
		return false;
	}

	public boolean checkGmail(Users users) {
		List<Users> listUsers = new ArrayList<Users>();
		listUsers = usersRepo.findAll();
		for (Users checkUser : listUsers) {
			if (!users.getEmail().trim().isEmpty() && users.getEmail().equals(checkUser.getEmail())) {
				return true;
			}
		}
		return false;
	}

	public String GeneratePassword(Users users) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
		String result = encoder.encode(users.getPassword());
		return result;
	}

	@Transactional(rollbackOn = Exception.class)
	public String saveAccount(Users users) throws Exception {
		try {

			if (users.getUsername().trim().isEmpty()) {
				return "Vui lòng nhập tên tài khoản";
			} else {
				if (users.getEmail().trim().isEmpty()) {
					return "Vui lòng nhập gmail";
				} else {
					if (users.getPassword().trim().isEmpty()) {
						return "Vui lòng nhập mật khẩu";
					} else {
						if (checkUsername(users)) {
							return "Tên tài khoản đã có người sử dụng";
						} else {
							if (checkGmail(users)) {
								return "Email đã được sử dụng";
							} else {
								users.setCreatedDate(cal.getTime());
								users.setPassword(GeneratePassword(users));
								usersRepo.save(users);
								return "Đăng ký thành công!";
							}
						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	//
	public void updateResetPasswordToken(String token, String email) throws CustomerNotFoundException {
		Users users = usersRepo.findByEmail(email);
		if (users != null) {
			users.setResetPasswordToken(token);
			usersRepo.save(users);
		} else {
			throw new CustomerNotFoundException("Could not find any customer with the email " + email);
		}
	}

	public Users getByResetPasswordToken(String token) {
		return usersRepo.findByResetPasswordToken(token);
	}

	public void updatePassword(Users users, String newPassword) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(4);
		String encodedPassword = passwordEncoder.encode(newPassword);
		users.setPassword(encodedPassword);

		users.setResetPasswordToken(null);
		usersRepo.save(users);
	}

	public String forgotPassword(Email email, String token, HttpServletRequest request) {
		try {
			updateResetPasswordToken(token, email.getEmail());
			System.out.println("email: " + email.getEmail() + "\n" + "token" +  token + "\n" + "request: " + request);
			String resetPasswordLink = Utility.getSiteURL(request) + "/reset_password?token=" + token;
			sendEmail(email.getEmail(), resetPasswordLink);
			return ("We have sent a reset password link to your email. Please check.");
		} catch (CustomerNotFoundException ex) {
			return (ex.getMessage());
		} catch (UnsupportedEncodingException | MessagingException e) {
			return ("Error while sending email");
		}
	}

	public void sendEmail(String recipientEmail, String link) throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom("contact@shopme.com", "Darklock Support");
		helper.setTo(recipientEmail);

		String subject = "Here's the link to reset your password";

		String content = "<p>Hello,</p>" + "<p>You have requested to reset your password.</p>"
				+ "<p>Click the link below to change your password:</p>" + "<p><a href=\"" + link
				+ "\">Change my password</a></p>" + "<br>" + "<p>Ignore this email if you do remember your password, "
				+ "or you have not made the request.</p>";

		helper.setSubject(subject);

		helper.setText(content, true);

		mailSender.send(message);
	}

}
