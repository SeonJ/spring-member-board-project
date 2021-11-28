/**
 * 
 */
package com.javateam.springMemberProject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javateam.springMemberProject.domain.BoardVO;
import com.javateam.springMemberProject.service.BoardService;

/**
 * 개별 게시글 조회
 * 
 * @author javateam
 *
 */
@Controller
@RequestMapping("board")
public class BoardViewController {
	
	private static final Logger log 
		= LoggerFactory.getLogger(BoardViewController.class);
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board_view.do")
	public String boardView(@RequestParam("num") int num,
							@RequestParam(value="page", defaultValue="1") int page,
							Model model) {
		
		log.info("개별 게시글 조회");
		
		boardService.updateReadCount(num);
		
		BoardVO boardVO = boardService.selectOneBoardByNum(num);
		
		model.addAttribute("board", boardVO);
		model.addAttribute("page", page);
		
		return "/board/boardView";
	}

}
