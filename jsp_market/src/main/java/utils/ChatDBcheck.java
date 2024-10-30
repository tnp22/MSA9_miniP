package utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.JDBConnection;

public class ChatDBcheck extends JDBConnection {
	public boolean checkForUpdates() {
		boolean isUpdated = false;
		// 최근 5분이내수정된데이터확인
		String sql = "SELECT COUNT(*) AS count FROM comment WHERE updated_at > NOW() - INTERVAL 5 MINUTE";
		try (PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
			if (rs.next()) {
				isUpdated = rs.getInt("count") > 0; // 수정된 데이터가 있으면 true
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isUpdated;
	}
}
