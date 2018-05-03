package org.zerock.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	
	//public List<BoardVO> list(@Param("map")Map<String,String> map,@Param("cri")Criteria cri);
	public List<BoardVO> list(@Param("cri")Criteria cri);
	
	public int insert(BoardVO vo);
	
	public BoardVO read(int bno);
	
	public int update(BoardVO vo);
	
	public int delete(int bno); 
	
	public int getTotal(@Param("cri")Criteria cri);
}
		