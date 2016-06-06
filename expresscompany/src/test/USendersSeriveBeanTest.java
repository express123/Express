package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.zhbit.expresscompany.domain.USenders;
import com.zhbit.expressompany.service.USendersSerive;

public class USendersSeriveBeanTest {
	private static USendersSerive serive;
	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		serive = (USendersSerive) context.getBean("usendersSerive");
	}

	@Test
	public void testAdd() {
		USenders usender=new USenders();
		serive.add(usender);
	}

}
