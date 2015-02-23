package com.swcguild.bluraylibrary.dao;

import com.swcguild.bluraylibrary.dto.Bluray;
import java.util.*;

public class BlurayDaoMemImpl implements BlurayDao {

    Map<Integer, Bluray> blurayMap = new HashMap<>();
    int id = 0;

	@Override
	public List<Bluray> getAllBlurays() {
		return new ArrayList(blurayMap.values());
	}

	@Override
	public Bluray getBlurayById(int id) {
        return blurayMap.get(id);
	}

	@Override
	public void addBluray(Bluray bluray) {
        bluray.setId(id);
        blurayMap.put(id, bluray);
        id++;
	}

	@Override
	public void removeBluray(int id) {
        blurayMap.remove(id);
	}

	@Override
	public void updateBluray(int id, Bluray bluray) {
       blurayMap.put(bluray.getId(), bluray); 
	}

}
