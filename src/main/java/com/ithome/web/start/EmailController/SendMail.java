package com.ithome.web.start.EmailController;

import com.ithome.web.start.Conctances.Contance;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
    public static boolean send(String sendName, String senderPhoneNumber, String senderEmailAddress, String body, String menu){
        String subject = menu;

        Properties props = new Properties();
        props.setProperty("mail.smtp.host", Contance.HOST);
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty(Contance.SOCKET_FACTORY,  Contance.PORT);
        props.put("mail.smtp.host", Contance.HOST);//change accordingly
        props.put("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(Contance.USERNAME, Contance.PASSWORD);
                    }
                });
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Contance.USERNAME));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(Contance.USERNAME));
            message.setSubject(subject,"UTF-8");
            message.setText(body + "\n\n\n Best regards \n From email ՝ "
                            + senderEmailAddress + " \nPhone number  " + senderPhoneNumber + "\n This email is from web page "
                    ,"UTF-8");

            //3rd step)send message
            Transport.send(message);

            System.out.println("Done");
            return true;

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }


    }
}
