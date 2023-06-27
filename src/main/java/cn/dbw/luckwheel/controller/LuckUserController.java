package cn.dbw.luckwheel.controller;

import cn.dbw.luckwheel.po.LuckUser;
import cn.dbw.luckwheel.service.BaseService;
import cn.dbw.luckwheel.service.LuckUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("user")
public class LuckUserController extends BaseController<LuckUser> {

    @Autowired
    private LuckUserService luckUserService;

    @Override
    public BaseService<LuckUser> getBaseService() {
        return luckUserService;
    }

    @PostMapping("sign")
    public Map sign(@RequestBody Map map){
        Map rMap =  luckUserService.sign(map);
        return rMap;
    }

    @PostMapping("register")
    public Map register(@RequestBody Map map){
        Map rMap =  luckUserService.register(map);
        return rMap;
    }

    @PostMapping("score")
    public Map score(@RequestBody Map map){
        Map rMap =  luckUserService.score(map);
        return rMap;
    }


}
