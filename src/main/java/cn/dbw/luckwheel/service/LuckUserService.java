package cn.dbw.luckwheel.service;

import cn.dbw.luckwheel.mapper.LuckUserMapper;
import cn.dbw.luckwheel.po.LuckUser;
import cn.hutool.core.util.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@Service
public class LuckUserService extends  BaseService<LuckUser> {
    @Autowired
    private LuckUserMapper luckUserMapper;

    public Map sign(Map map){
        Map rMap = new HashMap();
        rMap.put("pnum",null);
        String uname = map.get("loginUsername").toString();
        String loginPassword = map.get("loginPassword").toString();
        Map<String, Object> byname = luckUserMapper.getByname(uname);
        if(byname == null){
            return rMap;
        }
        String password = byname.get("password").toString();
        if (password.equals(loginPassword)){
            rMap.put("pnum",byname.get("uid"));
            rMap.put("score",byname.get("score"));
        }
        return rMap;
    }

    public Map register(Map map){
        Map rMap = new HashMap();
        rMap.put("code",0);
        String registerUsername = map.get("registerUsername").toString();
        String registerPassword = map.get("registerPassword").toString();
        String registerWellPassword = map.get("registerWellPassword").toString();
        if(!Objects.equals(registerWellPassword,registerPassword)){
            rMap.put("code",-1);
            rMap.put("msg","两次密码不一致");
        }
        Map<String, Object> byname = luckUserMapper.getByname(registerUsername);
        if(byname != null){
            rMap.put("code",-1);
            rMap.put("msg","账号已存在");
            return rMap;
        }
        LuckUser user = new LuckUser();
        user.setUid(IdUtil.randomUUID());
        user.setUname(registerUsername);
        user.setPassword(registerPassword);
        user.setScore(100);
        luckUserMapper.insert(user);
        rMap.put("msg","注册成功");
        return rMap;
    }

    public LuckUser findByUid(String uid){
        return luckUserMapper.findByUid(uid);
    }

    public void updateScoreById(Integer score,String uid){
        luckUserMapper.updateScoreById(score,uid);
    }

    public Map score(Map map) {
        Map rMap = new HashMap();
        String uid = map.get("uid").toString();
        LuckUser byUid = luckUserMapper.findByUid(uid);

        rMap.put("score", byUid.getScore());

        return rMap;
    }
}
