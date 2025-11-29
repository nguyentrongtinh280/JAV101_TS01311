package poly.com.utils;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.activation.DataHandler;
import jakarta.activation.DataSource;
import jakarta.activation.FileTypeMap;
import jakarta.mail.util.ByteArrayDataSource;
import java.io.InputStream;
import java.util.Properties;
import jakarta.servlet.http.Part;

public class Email {
    private static final String APP_PASSWORD = "ofsribleixoahfei"; 

    public static void sendEmail(String from, String to, String subject, String body, Part attachment) throws Exception {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, APP_PASSWORD);
            }
        });
        session.setDebug(true); 

        MimeMessage mail = new MimeMessage(session);
        mail.setFrom(new InternetAddress(from));
        mail.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        mail.setSubject(subject, "UTF-8");

        // Nội dung email
        MimeBodyPart textPart = new MimeBodyPart();
        textPart.setContent(body, "text/html; charset=UTF-8");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(textPart);

        // Nếu có file, thêm vào multipart
        if (attachment != null && attachment.getSize() > 0) {
            MimeBodyPart attachPart = new MimeBodyPart();
            String fileName = attachment.getSubmittedFileName();
            InputStream inputStream = attachment.getInputStream();

            // Sử dụng ByteArrayDataSource
            DataSource source = new ByteArrayDataSource(inputStream, attachment.getContentType());
            attachPart.setDataHandler(new DataHandler(source));
            attachPart.setFileName(fileName);

            multipart.addBodyPart(attachPart);
        }

        mail.setContent(multipart);

        Transport.send(mail);
    }
}
