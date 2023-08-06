/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author 84339
 */

public class User {
    private int u_id;
    private String username;
    private String password;
    private String fullName;
    private Date dob;
    private int gender;
    private String email;
    private String phoneNumber;
    private String address;
    private int role;
    private int user_status;
    private Date create_time;
    private String avatar;
    private String key;

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getUser_status() {
        return user_status;
    }

    public void setUser_status(int user_status) {
        this.user_status = user_status;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public User() {
    }

    public User(int u_id, String username, String password, String fullName, Date dob, int gender, String email, String phoneNumber, String address, int role, int user_status, Date create_time, String avatar) {
        this.u_id = u_id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.role = role;
        this.user_status = user_status;
        this.create_time = create_time;
        this.avatar = avatar;
    }

    public User(int u_id, String username, String password, String fullName, Date dob, int gender, String email, String phoneNumber, String address, int role, int user_status, Date create_time, String avatar, String key) {
        this.u_id = u_id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.role = role;
        this.user_status = user_status;
        this.create_time = create_time;
        this.avatar = avatar;
        this.key = key;
    }

    @Override
    public String toString() {
        return "User{" + "u_id=" + u_id + ", username=" + username + ", password=" + password + ", fullName=" + fullName + ", dob=" + dob + ", gender=" + gender + ", email=" + email + ", phoneNumber=" + phoneNumber + ", address=" + address + ", role=" + role + ", user_status=" + user_status + ", create_time=" + create_time + ", avatar=" + avatar + ", key=" + key + '}';
    }

    
}
