package cn.dbw.luckwheel.po;

import lombok.Data;

import javax.persistence.*;

@Table(name = "luck_user")
@Data
public class LuckUser {

    private Integer id;

    private String uid;

    private String uname;

    private String password;

    private Integer score;

}