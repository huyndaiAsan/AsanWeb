package kr.re.aac.common.service;

import javax.mail.*;
import javax.mail.internet.*;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;
import java.io.UnsupportedEncodingException;

public class MailUtil {
	@Autowired
    private MailUtil mailutil;
	
	private static final String DEFAULT_MIME_TYPE = "text/html; charset=UTF-8";
	private boolean isPrepared = false;
	private String sender;
	private InternetAddress senderAddress;
	private String receiver;
	private InternetAddress[] receiverAddress;
	private List receivers;
	private Properties properties;
	private Authenticator authentication;
	
	public MailUtil(String sender, String receiver) {
		setMailInfo(sender, receiver);
	}
	
	@SuppressWarnings("rawtypes")
	public void setMailInfo(String sender, Object receivers) {
		try {
			this.senderAddress = new InternetAddress(sender);

			this.sender = this.senderAddress.getAddress();

			if ((receivers instanceof List)) {
				this.isPrepared = true;
				this.receivers = ((List) receivers);
			} else if ((receivers instanceof String)) {
				this.isPrepared = true;
				this.receiver = ((String) receivers);
				this.receiverAddress = InternetAddress.parse(this.receiver);
				for (int i = 0; i < this.receiverAddress.length; i++) {
					this.receiverAddress[i].setAddress(this.receiverAddress[i]
							.getAddress());
					this.receiverAddress[i].setPersonal(this.receiverAddress[i]
							.getPersonal());
				}
			}
		} catch (AddressException e) {
			e.printStackTrace();
			System.out.println("AddressException : " + e);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			System.out.println("UnsupportedEncodingException : " + e);
		}
	}
	
	public void getSession() {
		this.properties = new Properties();
		this.properties.put("mail.transport.protocol", "smtp");

		this.properties.put("mail.smtp.host", "mail.kist.re.kr");
		this.properties.put("mail.smtp.user", "administrator");

		this.properties.put("mail.smtp.port", "25");
	}
	
	public void send(String subject, String contents) {
		sendWithContentsType(subject, contents, MailUtil.DEFAULT_MIME_TYPE);
	}
	
	public void sendWithContentsType(String subject, String contents, String mimeType) {
		
		Session mailSession = Session.getInstance(this.properties,
				this.authentication);
		Message message = new MimeMessage(mailSession);
		try {
			InternetAddress[] replyTo = { new InternetAddress(this.sender) };
			message.setHeader("MIME-Version", "1.0");

			message.setFrom(new InternetAddress(this.sender, this.senderAddress
					.getPersonal()));
			message.setReplyTo(replyTo);

			message.setRecipients(Message.RecipientType.TO,
					this.receiverAddress);
			//message.addRecipient(Message.RecipientType.BCC, this.senderAddress);

			message.setSentDate(new Date());

			message.setSubject(subject);

			message.setContent(contents, mimeType + "; charset=UTF-8");

			Transport.send(message);
			System.out.println("E-mail successfully sent!");
		} catch (AddressException e) {
			e.printStackTrace();
			System.out.println("AddressException : " + e);
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println("MessagingException : " + e);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			System.out.println("UnsupportedEncodingException : " + e);
		}
	}
}
