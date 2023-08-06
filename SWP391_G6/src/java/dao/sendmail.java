/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.util.Random;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author 84339
 */
public class sendmail {
    public static void send(String to, String sub, String msg, final String user, final String pass){
       Properties properties = new Properties();
       properties.put("mail.smtp.host", "smtp.gmail.com");
       properties.put("mail.smtp.port", "587");
       properties.put("mail.smtp.auth","true");
       properties.put("mail.smtp.starttls.enable","true");
       properties.put("mail.smtp.ssl.trust","*");
       Session session = Session.getInstance(properties , new javax.mail.Authenticator() {
           @Override
           protected PasswordAuthentication getPasswordAuthentication(){
               return new PasswordAuthentication(user, pass);
           }
       });
       
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(sub);
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
    public static String randomString(int length){
 // độ dài của chuỗi ngẫu nhiên
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                     + "abcdefghijklmnopqrstuvwxyz"
                     + "0123456789"; // các ký tự được phép sử dụng trong chuỗi
        
        Random rand = new Random();
        StringBuilder sb = new StringBuilder();
        
        for (int i = 0; i < length; i++) {
            int index = rand.nextInt(chars.length()); // lấy một chỉ số ngẫu nhiên từ 0 đến chiều dài của chuỗi ký tự
            char randomChar = chars.charAt(index); // lấy ký tự tương ứng với chỉ số ngẫu nhiên
            sb.append(randomChar); // thêm ký tự vào chuỗi kết quả
        }
        String randomString = sb.toString();
        return randomString;
    }

    public static void main(String[] args) {
        
        String subject = "You change your password ";
        String message = "<!DOCTYPE html>"
            +"<html>"
            +"<head>"
            +"<title>Servlet NewServlet</title>"            
            +"</head>"
            +"<body>"
            +"<h1>Mat khau cua reset cua ban la: "+ sendmail.randomString(5)  +"</h1>" // chuyển đổi StringBuilder thành chuỗi kết quả
            +"</body>"
            +"</html>";
        sendmail.send("hoanghvhe163990@fpt.edu.vn", subject, message, "hacviethoang162002@gmail.com", "vgnoepvxpjnqqyrt");
    }
}
