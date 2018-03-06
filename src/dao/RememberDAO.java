package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Remember;

@Repository
public class RememberDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Remember> getItems(int offset, int row_count) {
		String sql = "SELECT * from remember  limit  ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, row_count }, new BeanPropertyRowMapper<Remember>(Remember.class));
	}

	public List<Remember> getItems() {
		String sql = "SELECT * from remember";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Remember>(Remember.class));
	}

	public int delItem(int idremember) {
		String sql = "delete from remember	where remember.id=? ";
		return jdbcTemplate.update(sql, new Object[] { idremember });
	}


	public int countSumremember() {
		String sql = "SELECT COUNT(*) AS sumpage FROM remember ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}


	public Remember getItem(int idremember) {
		String sql = "SELECT * from remember where remember.id=?";
		return jdbcTemplate.queryForObject(sql, new Object[] { idremember }, new BeanPropertyRowMapper<Remember>(Remember.class));
	}

	public int editItem(Remember objNew) {
		String sql = "update remember set name=?, preview=?, detail=?, date=? where remember.id=? ";
		return jdbcTemplate.update(sql,
				new Object[] { objNew.getName(), objNew.getPreview(), objNew.getDetail(), objNew.getDate(),
						objNew.getId() });
	}

	public int addItem(Remember objNew) {
		String sql = "insert into remember	(name, preview, detail, date, picture) values (?,?,?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[] { objNew.getName(), objNew.getPreview(), objNew.getDetail(), objNew.getDate(),
						objNew.getPicture()});
	}


}
