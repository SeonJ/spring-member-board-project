/**
 * 
 */
package com.javateam.springMemberProject.service;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.javateam.springMemberProject.dao.MemberDAO;
import com.javateam.springMemberProject.domain.MemberVO;

/**
 * MemberService getMember 단위 테스트
 * 
 * @author javateam
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
									"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@WebAppConfiguration
public class MemberServiceReadTest {

	private static final Logger log
		= LoggerFactory.getLogger(MemberServiceReadTest.class);
	
	@Autowired
	MemberService memberSvc;
	//MemberDAO memberDAO;
	
	MemberVO member;
	String userid; // 회원 아이디
	
	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		userid = "jsp1234567";
		
		member = new MemberVO();
		member.setName("자바");
		member.setUserid("jsp1234567");
		member.setPwd("#Abc1234");
		member.setEmail("jspjsp@abcd.com");
		member.setPhone("010-1212-7979");
		member.setAdmin(0);
	}

	/**
	 * Test method for {@link com.javateam.springMemberProject.service.MemberService#insertMember(com.javateam.springMemberProject.domain.MemberVO)}.
	 * @throws SQLException 
	 */
	@Test
	public void testGetMember() {
		
		log.info("### MemberServiceReadTest");
		
		/**
		 * 모든 멤버 필드 비교
		 * 기대값 : true
		 */
//		assertEquals(member, memberSvc.getMember(userid));
//		log.info("member : " + member.hashCode());
//		log.info("member : " + memberSvc.getMember(userid).hashCode());
		
		assertTrue(member.equals(memberSvc.getMember(userid)));
	}

}
