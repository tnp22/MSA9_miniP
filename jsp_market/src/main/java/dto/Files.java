package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Files {
	int no;
	String file_path;
	int table_no;
	String table_name;
	int code;
	Date reg_date;
	Date upd_date;
}
