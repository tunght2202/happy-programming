/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DBContext.getJDBCConnection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author dell
 */
public class MentorDAO extends DBContext {

    public ArrayList<User> getMentorSuggestion() {
        String xMySql = "select u_id,username,password,full_name,dob,gender,email,phoneNumber,address,role,user_status,create_date,avatar,count(*) as count ,avg(rate) as avg\n"
                + "from swp391.view_cv\n"
                + "right join swp391.comment \n"
                + "ON swp391.view_cv.user_id = swp391.comment.mentorID\n"
                + "inner join swp391.user\n"
                + "on swp391.view_cv.user_id = swp391.user.u_id\n"
                + "group by mentorID ORDER BY count DESC, avg desc\n"
                + "LIMIT 10;";
        ArrayList<User> list = new ArrayList<>();

        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User mentor = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getInt(11), rs.getDate(12), rs.getString(13));
                list.add(mentor);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public double getRating(int mentorID) {
        String xMySql = "select count(menteeID) as mentee, avg(rate) as rate from swp391.comment where swp391.comment.mentorID = ?;";
        double avgRate = 0;
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, mentorID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                avgRate = rs.getDouble(2);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return avgRate;
    }

    public int getNumberMentee(int mentorID) {
        String xMySql = "select count(menteeID) as mentee, avg(rate) as rate from swp391.comment where swp391.comment.mentorID = ?;";
        int numberMentee = 0;
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, mentorID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                numberMentee = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return numberMentee;
    }

    public ArrayList<Skills> getAllSkills() {
        ArrayList<Skills> list = new ArrayList<>();
        try {
            String sql = "select * from swp391.skills";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Skills s = new Skills(rs.getInt(1), rs.getString(2), rs.getInt(3));
                list.add(s);
            }

        } catch (Exception e) {
        }
        return list;
    }

    public void editSkillStatus(int skillId, int skillStatus) {
        String xMySql = "UPDATE `swp391`.`skills` SET `status` = ? WHERE (`skill_id` = ?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, skillStatus);
            st.setInt(2, skillId);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public int getSkillStatus(int skillID) {
        String xMySql = " SELECT status FROM swp391.skills where skill_id = ?; ";
        int stausSkill = 0;

        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, skillID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                stausSkill = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return stausSkill;
    }

    public Skills getSkillById(int skillId) {
        String xMySql = "SELECT * FROM swp391.skills WHERE skill_id = ? ;";
        Skills skill = new Skills();
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, skillId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                skill.setSkill_id(rs.getInt(1));
                skill.setSkill_name(rs.getString(2));
                skill.setStatus(rs.getInt(3));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return skill;
    }

    public void editSkill(int skillId, String skillName, int skillStatus) {
        String xMySql = "UPDATE `swp391`.`skills` SET `skill_name` = ?, `status` = ? WHERE (`skill_id` = ?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setString(1, skillName);
            st.setInt(2, skillStatus);
            st.setInt(3, skillId);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public void UpdateMentorAccount(int u_id, String username, String password, String full_name,
            Date dob, int gender, String email, String phoneNumber, String address, Date create_date) {

        String xMySql = "UPDATE `swp391`.`user`\n"
                + "SET\n"
                + "`username` = ?,\n"
                + "`password` = ?,\n"
                + "`full_name` = ?,\n"
                + "`dob` = ?,\n"
                + "`gender` = ?,\n"
                + "`email` = ?,\n"
                + "`phoneNumber` = ?,\n"
                + "`address` = ?,\n"
                + "`role` = '3',\n"
                + "`user_status` = '1',\n"
                + "`create_date` = ?\n"
                + "WHERE `u_id` = ?";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(10, u_id);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, full_name);
            st.setDate(4, dob);
            st.setInt(5, gender);
            st.setString(6, email);
            st.setString(7, phoneNumber);
            st.setString(8, address);
            st.setDate(9, create_date);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }

    public void CreateCV(int user_id, String profession, String ProfessionIntro, String ServiceDescreption, String achivements, String framework, Date createDate) {
        String xMySql = "INSERT INTO `swp391`.`view_cv`\n"
                + "(\n"
                + "`user_id`,\n"
                + "`profession`,\n"
                + "`profession introduction`,\n"
                + "`service descreption`,\n"
                + "`achivement`,\n"
                + "`framework`,\n"
                + "`createDate`)\n"
                + "VALUES(?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, user_id);
            st.setString(2, profession);
            st.setString(3, ProfessionIntro);
            st.setString(4, ServiceDescreption);
            st.setString(5, achivements);
            st.setString(6, framework);
            st.setDate(7, createDate);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }
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
    public void createMentorskill(int skill_Id) {
        String sql = " INSERT INTO skillofcv (Sofskill_id, Sofcv_id)\n"
                + "                    VALUES (?, (SELECT MAX(viewcv_id) FROM view_cv));";
        try {
            
            PreparedStatement ps = getJDBCConnection().prepareStatement(sql);
            ps.setInt(1, skill_Id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    public ArrayList<RequestStatus> getAllStatus() {
        ArrayList<RequestStatus> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM swp391.requeststatus";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                RequestStatus s = new RequestStatus(rs.getInt(1), rs.getString(2));
                list.add(s);
            }

        } catch (Exception e) {
        }
        return list;
    }
     public void UpdateCV(int user_id, String profession, String ProfessionIntro, String ServiceDescreption, String achivements, String framework, Date createDate) {
        String xMySql = "UPDATE `swp391`.`view_cv`\n"
                + "SET\n"
                + "`profession` = ?,\n"
                + "`profession introduction` = ?,\n"
                + "`service descreption` = ?,\n"
                + "`achivement` = ?,\n"
                + "`framework` = ?,\n"
                + "`createDate` = ?\n"
                + "WHERE `user_id` = ?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(7, user_id);
            st.setString(1, profession);
            st.setString(2, ProfessionIntro);
            st.setString(3, ServiceDescreption);
            st.setString(4, achivements);
            st.setString(5, framework);
            st.setDate(6, createDate);
            st.executeUpdate();
            st.close();
        } catch (SQLException e) {
        }
    }
    public void updateMentorskill(int skill_Id, int sofcv_id) {
        String sql = " UPDATE `swp391`.`skillofcv`\n"
                + "Set\n"
                + " `Sofskill_id` = ?\n"
                + "WHERE `Sofcv_id` IN (SELECT v.viewcv_id FROM "
                + "(SELECT * FROM view_cv) v WHERE v.user_id = ?);";
        try {

            PreparedStatement ps = getJDBCConnection().prepareStatement(sql);
            ps.setInt(1, skill_Id);
            ps.setInt(2, sofcv_id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
//    public static void main(String[] args){
//        MentorDAO mt = new MentorDAO();
//        mt.UpdateMentorAccount(2, "thanhtung", "123456789", "tungkhongbeo",
//               Date.valueOf("2002-09-12"), 1, "tungbeo@gmail.com", 
//        "0968757507", "haiduongcity", Date.valueOf("2021-11-10"));
//        ArrayList<User> list = mt.getAllUser();
//        System.out.println(list.get(0).toString());
//        System.out.println(list.get(1).toString());
//    }
//}
    public static void main(String[] args) throws SQLException {

        MentorDAO d = new MentorDAO();
        for (Skills s : d.getAllSkills()) {
            System.out.println(s);
        }

    }
}
