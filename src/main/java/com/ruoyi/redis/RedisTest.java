package com.ruoyi.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("redis")
public class RedisTest {


  @Autowired
  RedisTemplate<String, String> redisTemplate;

  @RequestMapping("hash/{key}")
  public String foo(@PathVariable String key) {
    Boolean falg = redisTemplate.opsForZSet().add("key1", "value1", 12312);

    return "";


  }


}
