package com.resustainability.reisp.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.BrainBox;

@Repository
public class BBBankDao {

	@Autowired
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<BrainBox> getThemeList() {
        List<BrainBox> objsList = new ArrayList<BrainBox>();
        String qry = "SELECT  "
                + "    theme_code, "
                + "    theme_name, "
                + "    count(theme_code) as counts, "
                + "    STRING_AGG(title, ',') as title, "
                + "    STRING_AGG(idea_no, ',') as idea_no, "
                + "    STRING_AGG(b.status, ',') as status, "
                + "    STRING_AGG(b.sbu, ',') as sbu, "
                + "    STRING_AGG(s.sbu_name, ',') as sbu_name, "
                + "    SUM(CASE WHEN b.status = 'In Progress' THEN 1 ELSE 0 END) as in_progress_count, "
                + "    SUM(CASE WHEN b.status = 'Resolved' THEN 1 ELSE 0 END) as resolved_count, "
                + "    SUM(CASE WHEN b.status = 'Rejected' THEN 1 ELSE 0 END) as rejected_count "
                + "FROM  "
                + "    [bb_theme] t "
                + "LEFT JOIN  "
                + "    bb_is b ON b.theme = t.theme_code "
                + "LEFT JOIN  "
                + "    sbu s ON b.sbu = s.sbu_code "
                + "WHERE  "
                + "    theme_code IS NOT NULL  "
                + "    AND theme_code <> ''  "
                + "    AND t.status = 'Active'   "
                + "    AND idea_no IS NOT NULL   "
                + "GROUP BY  "
                + "    theme_code, theme_name "
                + ""; 
        objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
        return objsList;
    }

	public List<BrainBox> getThemeListOne(BrainBox obj) {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		int arrSize = 0;
		String qry = "SELECT count(theme_code) as counts,theme_code,theme_name,STRING_AGG(title,',') as title,STRING_AGG(idea_no,',') as idea_no,STRING_AGG(b.status,',') as status"
				+ ",STRING_AGG(b.sbu,',') as sbu,STRING_AGG(s.sbu_name,',') as sbu_name "
				+ "  FROM [bb_theme] t "
				+ "Left join bb_is b on b.theme = t.theme_code "
				+ "Left join sbu s on b.sbu = s.sbu_code "
				+ " where theme_code is not null and theme_code <> '' and t.status = 'Active'  and idea_no is not null "; 
		if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
			qry = qry + " and  b.theme = ? ";
			arrSize++;
		}
		qry = qry + "  group by theme_code,theme_name";
		Object[] pValues = new Object[arrSize];
		int i = 0;
		if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
			pValues[i++] = obj.getTheme();
		}
		
		objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		return objsList;
	}

	
	
	
}
