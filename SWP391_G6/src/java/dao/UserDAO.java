/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author 84339
 */
public class UserDAO extends DBContext {

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM user";
            PreparedStatement preparedStatement = getJDBCConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getInt(11), rs.getDate(12), rs.getString(13));
                list.add(user);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public User login(String email, String pass) {
        String sql = "SELECT *\n"
                + "  FROM [Account_HE163990]\n"
                + "  where [email] = ?\n"
                + "  and [pass] = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getInt(11), rs.getDate(12), rs.getString(13));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public User checkAcc(String username, String password) {

        String xMySql = "SELECT * FROM user WHERE username = ? and password = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc = new User();
                acc.setU_id(rs.getInt(1));
                acc.setUsername(rs.getString(2));
                acc.setPassword(rs.getString(3));
                acc.setFullName(rs.getString(4));
                acc.setGender(rs.getInt(6));
                acc.setDob(rs.getDate(5));
                acc.setEmail(rs.getString(7));
                acc.setPhoneNumber(rs.getString(8));
                acc.setAddress(rs.getString(9));
                acc.setRole(rs.getInt(10));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean exitUser(String username) {

        String xMySql = "SELECT * FROM user WHERE username = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    public User getUserById(int uId) {

        String xMySql = "SELECT * FROM user WHERE u_id = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, uId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc = new User();
                acc.setU_id(rs.getInt(1));
                acc.setUsername(rs.getString(2));
                acc.setPassword(rs.getString(3));
                acc.setFullName(rs.getString(4));
                acc.setGender(rs.getInt(6));
                acc.setDob(rs.getDate(5));
                acc.setEmail(rs.getString(7));
                acc.setPhoneNumber(rs.getString(8));
                acc.setAddress(rs.getString(9));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public boolean exitEmail( String email) {

        String xMySql = "SELECT * FROM user WHERE email = ? ;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void changePassword(String userName, String newPassword) {
        String xMySql = "UPDATE user SET user.password = ? WHERE user.username = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, newPassword);
            st.setString(2, userName);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public User checkMail(String username, String email) {
        User acc = new User();
        String xMySql = "SELECT * FROM user WHERE username = ? and email = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, username);
            st.setString(2, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc.setFullName(rs.getString(4));
                acc.setUsername(rs.getString(2));
                acc.setPassword(rs.getString(3));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return acc;
    }

    public void resetPassword(String userName, String email, String newPassword) {
        String xMySql = "UPDATE user SET user.password = ? WHERE user.username = ? and user.email = ? ;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, userName);
            st.setString(2, email);
            st.setString(3, newPassword);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public int userIdMAX() {
        String xMySql = "SELECT MAX(u_id) FROM user;";
        int a = 0;
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                a = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return a;
    }

    public void addAccount(int u_id, String email, String full_name, String username, String password, String dob, String address) {
        String xMySql = "INSERT INTO user (u_id,email, full_name, username,password, dob, address) VALUES (?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, u_id);
            st.setString(2, email);
            st.setString(3, full_name);
            st.setString(4, username);
            st.setString(5, password);
            st.setString(6, dob);
            st.setString(7, address);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public void editProfile(String username, String password, String fullName, String dob, String gender, String email, String phoneNumber, String address, String u_id) {
        try {
            String sql = "UPDATE user SET username=?, `password`=?, full_name=?, dob=?, gender=?, `email`=?, phoneNumber=?, address=? WHERE u_id=? ";
            System.out.println(sql);
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, fullName);
            stm.setString(4, dob);
            stm.setString(5, gender);
            stm.setString(6, email);
            stm.setString(7, phoneNumber);
            stm.setString(8, address);
            stm.setString(9, u_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void createRequest(String menteeID, String mentorID, String skill_id, String status_id, String title, String deadline_date, String deadline_hour, String content, String programming_language, String createDate) {
        try {
            String sql = "INSERT INTO request (RmenteeID, RmentorID, skill_id, status_id, title, deadline_date, deadline_hour, content, programming_language, createDate) VALUES (?,?,?,?,?,?,?,?,?,?)";
            System.out.println(sql);
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, menteeID);
            stm.setString(2, mentorID);
            stm.setString(3, skill_id);
            stm.setString(4, status_id);
            stm.setString(5, title);
            stm.setString(6, deadline_date);
            stm.setString(7, deadline_hour);
            stm.setString(8, content);
            stm.setString(9, programming_language);
            stm.setString(10, createDate);
            stm.executeUpdate();
            stm.close();
        } catch (SQLException e) {
        }
    }
    
    public void addAccount(int u_id, String username, String password, String full_name,
                    Date dob, int gender, String email,String phoneNumber,String address,Date create_date, String avatar  ) {
                String randomString = sendmail.randomString(10);
        String xMySql = "INSERT INTO `swp391`.`user` (`u_id`, `username`, `password`, `full_name`, `dob`, `gender`, `email`, `phoneNumber`, `address`, `role`, `user_status`, `create_date`, `avatar`, `key`) VALUES (?,?,?,?,?,?,?,?,?,2,0,?,?,?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, u_id);
            st.setString(2, username);
            st.setString(3,password);
            st.setString(4,full_name);
            st.setDate(5, dob);
            st.setInt(6, gender);
            st.setString(7,email);
            st.setString(8,phoneNumber);
            st.setString(9,address);
            st.setDate(10, create_date);
            st.setString(11, avatar);
            st.setString(12, randomString);
            st.executeUpdate();
            st.close();
            String subject = "Verify Email ";
                    String message = "<!DOCTYPE html>"
                            + "<html>"
                            + "<head>"
                            + "<title>Servlet NewServlet</title>"
                            + "</head>"
                            + "<body>"
                            + "<h1> Wellcome to Happy Programming</h1>"
                            + "<h1> <a href=\"http://localhost:8080/SWP391_G6/activeAccount?email=" + email +"&key=" + randomString +"\"> Verify email</a>  </h1>" // chuyển đổi StringBuilder thành chuỗi kết quả
                            + "</body>"
                            + "</html>";
                    sendmail.send(email, subject, message, "hongquan101002@gmail.com", "ijouiuccyadlpqjd");
        } catch (SQLException e) {
        }
    }
    
        public int checkEmailAndKey(String email, String key) {
        String xMySql = "select * from swp391.user where swp391.user.key = ? and swp391.user.email = ?";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, key);
            st.setString(2, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int a = rs.getInt(1);
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
     
        public void verifyEmail(int id) {
        String xMySql = "UPDATE `swp391`.`user` SET `user_status` = '1', `key` = '' WHERE (`u_id` = ?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, id);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }
    

    
    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
        System.out.println(ud.exitUser("1123"));
    }
//    
//        public void UpdateRequest(int menteeId, int mentorID, int skill_id, int status_id, String title, Date deadline_date, Time deadline_hour, String content, String programming_language) {
//        try {
//            String sql =  "UPDATE swp391.request SET title=?, `deadline_date`=?, deadline_hour=?, content=?, programming_language=? WHERE menteeId=? and mentorID=?";
//            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
//            stm.setString(5, title);
//            stm.setString(6, deadline_date);
//            stm.setString(7, deadline_hour);
//            stm.setString(8, content);
//            stm.setString(9, programming_language);
//            
//            stm.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
}

