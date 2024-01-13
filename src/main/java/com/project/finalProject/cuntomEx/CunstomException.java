package com.project.finalProject.runtimeEx;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class DbException extends RuntimeException {
	
	public DbException() {

		super("DB트렌젝션");
		log.info("db트렌젝션");
	}

}
