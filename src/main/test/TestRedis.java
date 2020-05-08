import com.ruoyi.RuoYiApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.DefaultTypedTuple;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.data.redis.core.ZSetOperations.TypedTuple;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.HashSet;

@SpringBootTest(classes = RuoYiApplication.class)
@RunWith(SpringRunner.class)
public class TestRedis {

  @Autowired
  RedisTemplate redisTemplate;

  @Before
  public void setup() {
    System.out.println("开始启动");
  }

  @Test
  public void foo() {

    Object obj = new Object();
    /**
     * 学东西  先脉络后细节
     *
     *
     *
     *  GC  cms垃圾收集器(6岁   其他15岁  对象头 )    映射了一下？
     *
     *  G1  jdk 9
     *
     *
     *   内存泄漏：某一块内存被永远占用 别人永不用不了   内存泄漏多了以后就会产生内存溢出 OOM
     *   引用计数  （Python）  环形   一团垃圾 a->b->c->a
     *   根可达性  GC roots  根？ 线程栈变量   静态变量   常量池  JNI指针
     *三种算法
     *
     *   标记清除  内存碎片  速度快
     *   复制(拷贝)  浪费内存   new/young   效率高  速度快
     *   标记压缩    效率低
     *
     *   垃圾收集器
     *   young   old
     *
     *
     *   -XX：MaxTenuringTh   年龄
     *
     *
     *   栈上分配   pop弹出
     *   Fgc
     *   Ygc
     *   minor GC   young
     *   MagarGc  old
     *
     *   TLAB  线程本地分配缓冲区  仍然在eden(需要同步--》优化  tlab)
     *
     *  1.8 默认ps   po垃圾收集器 Parallel Scavenge
     *
     *
     *
     * Serial   stop-the-word（工作线程全部停止） 单线程  jdk1.0默认自带  适合内存小的   safe point
     *
     *
     *
     * Parallel Scavenge   Parallel  old （多线程）
     *
     * parNew   CMS  不再需要长时间的STW    专门配合CMS使用   承上启下下  搞不定 直接用G1
     *
     *CMS主要四个阶段 initial  mark   concurrnt mark   remark
     *
     * 初始标记   并发标记（误标）  重新标记   并发清理    浮动垃圾
     *
     * 三色标记   白灰 黑     SATB 增量更新   ZGC  颜色指针  虚拟内存映射
     *
     *
     * G1逻辑分代  物理不分代  Region
     *
     *
     * linux
     * -标准   -X 非标准   -XX
     *
     *
     *
     *
     *
     * -Xms 最小堆   -Xmx最大堆
     *
     *
     * top
     *
     * jstack 死锁
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     */


  }

  public static void main(String[] args) {
    for (;;){}

  }

  @After
  public void tearDown() {
    System.out.println("测试结束");
  }

}
