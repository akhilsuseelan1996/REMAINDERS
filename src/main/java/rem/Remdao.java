package rem;

import rem.Rem;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class Remdao
{
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
	}
	
	public int save(Rem p)
	{
		String sql= "insert into rem(eventname,location,startdate,enddate,description) values('"+p.getEventname()+"','"+p.getLocation()+"','"+p.getStartdate()+"','"+p.getEnddate()+"','"+p.getDescription()+"')";
		return template.update(sql);
	}
	
	public int update(Rem p) 
	{
		String sql="update rem set eventname='"+p.getEventname()+"',location='"+p.getLocation()+"',startdate='"+p.getStartdate()+"',enddate='"+p.getEnddate()+"',description='"+p.getDescription()+"' where id='"+p.getId()+"'";
		return template.update(sql);
	}
	
	
	public Rem getRemById(int id)
	{  
	    String sql="select * from rem where id=?";  
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Rem>(Rem.class));  
	    
	}
	
	public List<Rem>getRemainder()
	{
		return template.query("select*from rem",new RowMapper<Rem>() {
			public Rem mapRow(ResultSet rs,int row) throws SQLException{
				Rem r = new Rem();
				r.setId(rs.getInt(1));
				r.setEventname(rs.getString(2));
				r.setLocation(rs.getString(3));
				r.setStartdate(rs.getString(4));
				r.setEnddate(rs.getString(5));
				r.setDescription(rs.getString(6));
				return r;
			}
		});
	}

}
