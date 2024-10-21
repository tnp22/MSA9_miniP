package service;

import java.util.List;

import dto.Board;

public interface BoardService {

	//보드 생성
	public int insert(Board index);
	
	//보드 삭제
	public Board select(int no);
	
	//보드 조회 (아이s디)
	public List<Board> select(String id);
	
	//보드 업데이트
	public boolean update(Board index);
	
	//보드 삭제
	public boolean delete(int uuid);
	
}
