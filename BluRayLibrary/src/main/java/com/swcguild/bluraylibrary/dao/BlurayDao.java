package com.swcguild.bluraylibrary.dao;

import com.swcguild.bluraylibrary.dto.Bluray;
import java.util.List;

public interface BlurayDao {
	public List<Bluray> getAllBlurays();
	public Bluray getBlurayById(int id);
	public void addBluray(Bluray bluray);
	public void removeBluray(int id);
	public void updateBluray(int id, Bluray bluray);
}
