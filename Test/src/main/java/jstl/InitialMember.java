package jstl;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;

import java.util.*;

/**
 * File : InitialMember.java
 * Desc : Member ������ �ʱ�ȭ�� ���� ������ Ŭ����
 * @author Ȳ����(dinfree@dinfree.com)
 */
@WebListener
public class  InitialMember implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
			ServletContext context = sce.getServletContext();
			ArrayList<Member> datas = new ArrayList<Member>();
			
			// JSTL ������ ���� 0~7 ������ ���� �����͸� ����
			for(int i=0;i<8;i++) {
				Member data = new Member("Ȳ����"+i,"test"+i+"@test.net");
				datas.add(data);
			}
			
			// email �� ���� 2�� ���� ������ �߰�
			datas.add(new Member("ȫ�浿",null));
			datas.add(new Member("��浿",null));

			// application scope �� members �� member ��ü ����
			context.setAttribute("members", datas);
			context.setAttribute("member",new Member());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {}
}