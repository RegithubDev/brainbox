package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.BBBankDao;
import com.resustainability.reisp.dao.BrainBoxDao;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.User;

@Service
public class BBBankService {
	@Autowired
	BBBankDao dao;

	public List<BrainBox> getThemeList(User user) {
		return dao.getThemeList(user);
	}

	public List<BrainBox> getThemeListOne(BrainBox ob) {
		return dao.getThemeListOne(ob);
	}
}
