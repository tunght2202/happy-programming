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
public class Comment {
    private int feedback_id;
    private int FmenteeID;
    private int FmentorID;
    private float rate;
    private String cmtl;
    private Date createDate;
    private int status;

}
