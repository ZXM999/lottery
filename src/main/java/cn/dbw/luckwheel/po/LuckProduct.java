package cn.dbw.luckwheel.po;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "luck_product")
@Data
public class LuckProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "SELECT LAST_INSERT_ID()")
    private Integer id;

    /**
     * 商品名
     */
    private String name;

    /**
     * 分值
     */
    private Integer value;

    /**
     * 概率
     */
    private Float weight;

    /**
     * 是否展示
     */
    private Integer flag;

}