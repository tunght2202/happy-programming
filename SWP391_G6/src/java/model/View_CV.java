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
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class View_CV {
    private int cv_id;
    private int user_id;
    private String profession;
    private String ProIntro;
    private String ServiceDescreption;
    private String achivements;
    private String framework;
    private Date createDate;
    

}
