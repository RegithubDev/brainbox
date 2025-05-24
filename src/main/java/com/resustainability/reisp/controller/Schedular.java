package com.resustainability.reisp.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.Noida;
import com.resustainability.reisp.model.NoidaLog;
import com.resustainability.reisp.service.BrainBoxService;
import com.resustainability.reisp.service.UserService;


@Controller
public class Schedular {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	public static Logger logger = Logger.getLogger(Schedular.class);
	
	@Autowired
	LoginController loginController;
	

	@Autowired
	BrainBoxService service;
	
	@Autowired
	UserService serviceN;
	
	@Autowired
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${run.cron.jobs}")
	public boolean is_cron_jobs_enabled;
	
	@Value("${run.cron.jobs.in.qa}")
	public boolean is_cron_jobs_enabled_in_qa;
	
	/**********************************************************************************/
	
	/*
	 * @Scheduled(cron = "${cron.expression.user.login.timeout}") public void
	 * userLoginTimeout(){ if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
	 * try { System.out.println("cronJob Called!!!!"); } catch (Exception e) {
	 * e.printStackTrace(); logger.error("userLoginTimeout() : "+e.getMessage()); }
	 * } }
	 */
	/**********************************************************************************/	
	

}
