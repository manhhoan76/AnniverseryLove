package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Picture;

@Repository
public class PictureDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Picture> getItems() {
		String sql = "select * from picture ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Picture>(Picture.class));
	}
	public List<Picture> getItemsByIdR(int idR) {
		String sql = "select * from picture where id_remember=?";
		return jdbcTemplate.query(sql,new  Object[] {idR}, new BeanPropertyRowMapper<Picture>(Picture.class));
	}
	public List<Picture> getItems(int offset, int row_count) {
		String sql = "SELECT * FROM picture order by picture.id desc limit ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, row_count }, new BeanPropertyRowMapper<Picture>(Picture.class));
	}

	public int delItem(int idCat) {
		String sql = "delete from picture	where id=? ";
		return jdbcTemplate.update(sql, new Object[] { idCat });
	}
	public Picture getItem(int idCat) {
		String sql = "SELECT * FROM picture  where id=?";
		return jdbcTemplate.queryForObject(sql, new Object[] { idCat }, new BeanPropertyRowMapper<Picture>(Picture.class));
	}
	public int editItem(Picture objCat) {
		String sql = "update picture set id_remember=? where id=? ";
		return jdbcTemplate.update(sql,
				new Object[] { objCat.getId_remember(), objCat.getId()});
	}
	public int addItem(Picture objCat) {
		String sql = "insert into picture (name,id_remember) values(?,?) ";
		return jdbcTemplate.update(sql, new Object[] { objCat.getName(), objCat.getId_remember() });
	}

	public int countSumCat() {
		String sql = "SELECT COUNT(*) AS sumCat FROM picture ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
}
