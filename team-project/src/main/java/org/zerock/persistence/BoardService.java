package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	
	public int register(BoardVO vo);
	
	public BoardVO read(Integer bno);
	
	public int modify(BoardVO vo);
	
	public int delete(Integer bno);
	
	public List<BoardVO> list(Criteria cri);
	
	public int getTotal(Criteria cri);
}
