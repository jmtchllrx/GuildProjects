/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.bluraylibrary.dao;

import com.swcguild.bluraylibrary.dto.Bluray;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author joe
 */
public class BlurayDaoTest {
	
	BlurayDao dao = new BlurayDaoMemImpl();
	
	public BlurayDaoTest() {
	}
	
	@BeforeClass
	public static void setUpClass() {
	}
	
	@AfterClass
	public static void tearDownClass() {
	}
	
	@Before
	public void setUp() {
	}
	
	@After
	public void tearDown() {
	}

    @Test
	public void addGetDeleteTest() {
		Bluray br = new Bluray();
		br.setTitle("Bambi");
		br.setReleaseDate("1950");
		br.setMpaaRating("G");
		br.setDirector("Walt Disney");
		br.setStudio("Disney Animation");
		
		dao.addBluray(br);
		assertEquals(br, dao.getBlurayById(0));
		
		List<Bluray> list = new ArrayList<>();
		list.add(br);
		assertEquals(list, dao.getAllBlurays());
		
		dao.removeBluray(0);
		list.remove(br);
		assertNull(dao.getBlurayById(0));
		assertEquals(list, dao.getAllBlurays());
	}
}
