package yong.memo.model;

public class MemoDAOImple implements MemoDAO {

	public int memoWrite(MemoDTO dto) {

		System.out.println("DB Connected");
		System.out.println("Saved Data : "+dto.toString());
		System.out.println("DB Ended");
		return 1;
	}

}
