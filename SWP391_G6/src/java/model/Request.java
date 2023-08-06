/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.sql.Time;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author QUAN
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Request {
    int request_id;
    int menteeID;
    int mentorID;
    int skill_id;
    int status_id;
    String title;
    Date deadline_date;
    Time deadline_hour;
    String content;
    String skill_name;
    String status_name;

    @Override
    public String toString() {
        return "Request{" + "request_id=" + request_id + ", menteeID=" + menteeID + ", mentorID=" + mentorID + ", skill_id=" + skill_id + ", status_id=" + status_id + ", title=" + title + ", deadline_date=" + deadline_date + ", deadline_hour=" + deadline_hour + ", content=" + content + ", skill_name=" + skill_name + '}';
    }    
    
}