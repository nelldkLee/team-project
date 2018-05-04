package org.zerock.persistence;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;

@Service
public class BoardServiceImpl implements BoardService {


	@Setter(onMethod_ = { @Autowired })
	private BoardMapper mapper;
	
	@Override
	public int register(BoardVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public BoardVO read(Integer bno) {
		return mapper.read(bno);
	}

	@Override
	public int modify(BoardVO vo) {
		return mapper.update(vo);
	}

	@Override
	public int delete(Integer bno) {
		return mapper.delete(bno);
	}

	@Override
	public List<BoardVO> list(Criteria cri) {
		return mapper.list(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}
	
}
