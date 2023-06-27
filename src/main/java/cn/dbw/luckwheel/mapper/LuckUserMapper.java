package cn.dbw.luckwheel.mapper;

import cn.dbw.luckwheel.po.LuckUser;
import cn.dbw.luckwheel.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface LuckUserMapper extends MyMapper<LuckUser> {

    Map<String,Object> getByname(String uname);

    LuckUser findByUid(String uid);

    int updateScoreById(Integer score,String uid);
}