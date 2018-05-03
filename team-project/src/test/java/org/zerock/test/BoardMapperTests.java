package org.zerock.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Setter(onMethod_ = { @Autowired })
	private BoardMapper mapper;
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		cri.setType("t-w");
		cri.setKeyword("zerock");
		
		List<BoardVO> list = mapper.list(cri);
		list.forEach(vo->log.info(vo));
		
	}
	@Test
	public void testInsert() {
		BoardVO vo = new BoardVO("zerock","테스트 타이틀","컨텐츠 타이틀");
		
		mapper.insert(vo);
		
	}
	
	@Test
	public void testRead() {
		BoardVO vo = mapper.read(15);
		log.info(vo);
	}
	@Test
	public void testUpdate() {
		BoardVO vo = mapper.read(20);
		vo.setContent("수정합니다");
		vo.setTitle("수정수정");
		mapper.update(vo);
		mapper.read(20);
	}
	
	@Test
	public void testDelete() {
		mapper.delete(15);
	}
	
	@Test
	public void testGetTotal() {
		Criteria cri = new Criteria();
		cri.setType("t-c-w");
		cri.setKeyword("title3");
		log.info(mapper.getTotal(cri));
	}
}
