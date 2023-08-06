/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author 84339
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Skills {
     int skill_id;
     String skill_name;
     int status;

    @Override
    public String toString() {
        return "Skills{" + "skill_id=" + skill_id + ", skill_name=" + skill_name + ", status=" + status + '}';
    }
    
}
