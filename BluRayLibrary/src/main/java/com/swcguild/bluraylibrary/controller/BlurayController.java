package com.swcguild.bluraylibrary.controller;

import com.swcguild.bluraylibrary.dao.BlurayDao;
import com.swcguild.bluraylibrary.dto.Bluray;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BlurayController {
    private BlurayDao dao;

	@Inject
	public BlurayController(BlurayDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/blurays", method=RequestMethod.GET)
	@ResponseBody public List<Bluray> getAllBlurays() {
		return dao.getAllBlurays();
	}
	
	@RequestMapping(value = "/blurays/{id}", method = RequestMethod.GET)
    @ResponseBody public Bluray getBluray(@PathVariable("id") int id) {
        return dao.getBlurayById(id);
    }
	
	@RequestMapping(value="/blurays", method=RequestMethod.POST)
	@ResponseBody public void addBluray(@RequestBody Bluray bluray) {
		dao.addBluray(bluray);
	}
	
	@RequestMapping(value="/blurays/{id}", method=RequestMethod.PUT)
	@ResponseBody public void updateBluray(@PathVariable("id") int id, @RequestBody Bluray bluray) {
		dao.updateBluray(id, bluray);
	}
	
	@RequestMapping(value="/blurays/{id}", method=RequestMethod.DELETE)
	@ResponseBody public void removeBluray(@PathVariable("id") int id) {
		dao.removeBluray(id);
	}
}
