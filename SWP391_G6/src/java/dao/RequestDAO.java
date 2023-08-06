/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DBContext.getJDBCConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author QUAN
 */
public class RequestDAO extends DBContext {

    public ArrayList<Request> getRequestByRmenteeID(String u_id) {
        ArrayList<Request> list = new ArrayList<>();
        try {
            String sql = "SELECT requeststatus.status_name, skills.skill_name, request.*\n"
                    + "FROM request\n"
                    + "INNER JOIN skills ON request.skill_id = skills.skill_id\n"
                    + "INNER JOIN requeststatus ON request.status_id = requeststatus.status_id\n"
                    + "WHERE RmenteeID = ?;";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, u_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Request req = new Request(rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getDate(9), rs.getTime(10), rs.getString(11), rs.getString(2), rs.getString(1));
                list.add(req);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<Request> getRequestByRmentorID(String u_id) {
        ArrayList<Request> list = new ArrayList<>();
        try {
            String sql = "SELECT requeststatus.status_name, skills.skill_name, request.*\n"
                    + "FROM request\n"
                    + "INNER JOIN skills ON request.skill_id = skills.skill_id\n"
                    + "INNER JOIN requeststatus ON request.status_id = requeststatus.status_id\n"
                    + "WHERE RmentorID = ?;";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, u_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Request req = new Request(rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getDate(9), rs.getTime(10), rs.getString(11), rs.getString(2), rs.getString(1));
                list.add(req);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void createRequest(String menteeID, String mentorID, String[] skills, String status_id, String title, String deadline_date, String deadline_hour, String content) {
        try {
            String sql = "INSERT INTO request (RmenteeID, RmentorID, skill_id, status_id, title, deadline_date, deadline_hour, content) VALUES (?,?,?,?,?,?,?,?)";
            System.out.println(sql);
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            for (String skill : skills) {
                stm.setString(1, menteeID);
                stm.setString(2, mentorID);
                stm.setString(3, skill);
                stm.setString(4, status_id);
                stm.setString(5, title);
                stm.setString(6, deadline_date);
                stm.setString(7, deadline_hour);
                stm.setString(8, content);
                stm.executeUpdate();
            }
            stm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

     public void UpdateRequest(String menteeID, String mentorID, String skill_id, String status_id, String title, String deadline_date, String deadline_hour, String content) {
        try {
            String sql =  "UPDATE swp391.request SET  skill_id = ?, status_id = ? , title=?, `deadline_date`=?, deadline_hour=?, content=? WHERE RmenteeID=? and RmentorID = ?";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(7, menteeID);
            stm.setString(8, mentorID);
            stm.setString(1, skill_id);
            stm.setString(2, status_id);       
            stm.setString(3, title);
            stm.setString(4, deadline_date);
            stm.setString(5, deadline_hour);
            stm.setString(6, content);
            stm.executeUpdate();
            stm.close();
        } catch (Exception e) {
            //e.printStackTrace();
        }
    }
     public void changeStatusOfRequest(int sid, int status) {
        try {
            String sql =  "UPDATE `swp391`.`request` SET `status_id` = ? WHERE (`request_id` = ?);";
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, sid);
            
            stm.executeUpdate();
            stm.close();
        } catch (Exception e) {
            //e.printStackTrace();
        }
    }

    public void deleteSkillofRequest(String request_id) {
        try {
            String sql = "DELETE FROM `swp391`.`skillofrequest` WHERE (`idrequest` = ?)";
            System.out.println(sql);
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, request_id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteRequest(String request_id) {
        try {
            String sql = "DELETE FROM `swp391`.`request` WHERE (`request_id` = ?);";
            System.out.println(sql);
            PreparedStatement stm = getJDBCConnection().prepareStatement(sql);
            stm.setString(1, request_id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<RequestStatus> getAllStatus() {
        ArrayList<RequestStatus> sList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM swp391.requeststatus";
            PreparedStatement preparedStatement = getJDBCConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                RequestStatus status = new RequestStatus(rs.getInt(1), rs.getString(2));
                sList.add(status);
            }
        } catch (Exception e) {

        }
        return sList;
    }
    public int getStatusById(int requestId) {
        String xMySql = "SELECT swp391.request.status_id FROM swp391.request where swp391.request.request_id =?;";
        try {
            PreparedStatement st = getJDBCConnection().prepareStatement(xMySql);
            st.setInt(1, requestId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    public static void main(String[] args) {
        RequestDAO rd = new RequestDAO();
        rd.changeStatusOfRequest(5, 2);
    }
//    public static void main(String[] args) {
//        new dao.RequestDAO().deleteRequest("2");
//        new dao.RequestDAO().deleteSkillofRequest("2");
//    }
//    public static void main(String[] args) {
//        RequestDAO ud = new RequestDAO();
//        ud.UpdateRequest("1", "3", "2", "2", "day la mon hoc java1", "2024-06-12", "11:00:00",
//                "htjtutjt");
//        ArrayList<Request> list = ud.getAllRequest();
//        System.out.println(list.get(0).toString());
//        System.out.println(list.get(1).toString());
//    }
}
