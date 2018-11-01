package rem;

import rem.Rem;
import rem.Remdao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RemController
{
	@Autowired
	Remdao dao;
	
	@RequestMapping("/remform")
	public ModelAndView showform() 
	{
		return new ModelAndView("remform","command","new Rem()");
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("Rem") Rem rem)
	{
		dao.save(rem);
		return new ModelAndView("redirect:/remview");
	}
	
	@RequestMapping(value="/remview")
	public ModelAndView viewrem()
	{
		List <Rem> list=dao.getRemainder();
		return new ModelAndView("remview","list",list);
	}
	
	@RequestMapping(value="/remedit/{id}")
	public ModelAndView edit(@PathVariable int id) {
		
		Rem rem=dao.getRemById(id);
		return new ModelAndView("remedit","command",rem);
	}
	
	@RequestMapping(value="/remsave",method=RequestMethod.POST)
	public ModelAndView remsave(@ModelAttribute("rem")Rem rem) {
		dao.update(rem);
		return new ModelAndView("redirect:/remview");
	}

}
