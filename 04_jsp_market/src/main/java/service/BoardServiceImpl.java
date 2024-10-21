package service;

import java.util.List;

import dao.BoardDAO;
import dto.Board;

public class BoardServiceImpl implements BoardService {

	private BoardDAO indexDAO = new BoardDAO();
	
	@Override
	public int insert(Board index) {
		int result = indexDAO.insert(index);
		if(result >0) {
			System.out.println("보드생성 성공!");
		}
		else {
			System.out.println("보드생성 실패!");
		}
		return 0;
	}

	@Override
	public Board select(int no) {
		Board index = indexDAO.select(no);
		return index;
	}

	@Override
	public List<Board> select(String id) {
		
		return null;
	}

	@Override
	public boolean update(Board index) {
		boolean result = indexDAO.update(index);
		return result;
	}

	@Override
	public boolean delete(int uuid) {
		boolean result = indexDAO.delete(uuid);
		return result;
	}


	
}
