package org.zerock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Setter(onMethod_ = { @Autowired })
	private BoardMapper mapper;
	
	// localhost:8080/board/list?page=3&type=t-w&keyword="~~"
	@GetMapping("/list")
	public void list(Criteria cri,Model model) {
		
		List<BoardVO> list = mapper.list(cri);
		model.addAttribute("pageMaker",new PageMaker(cri, mapper.getTotal(cri)));
		model.addAttribute("list", list);
	}
	@GetMapping("/register")
	public void list() {
		log.info("register.... call");
	}
	
}
