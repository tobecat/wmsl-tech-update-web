package com.wealth.techupdate.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wealth.techupdate.web.entity.Speaker;
import com.wealth.techupdate.web.repository.SpeakerRepository;

@Controller
public class SpeakerController {
	
	@Autowired private SpeakerRepository speakerRepository;

    @RequestMapping(method = RequestMethod.POST, value = "/speaker/{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }
    
    @RequestMapping(method = RequestMethod.PUT, value = "/speaker/**")
    public ResponseEntity<String> put(@RequestBody String body) {
    	Speaker speaker = Speaker.fromJsonToSpeaker(body);
    	speaker = speakerRepository.save(speaker);
    	String json = speaker.toJson();
    	HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(json, headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/speakers/**")
    public ResponseEntity<String> list() {
    	List<Speaker> all = this.speakerRepository.findAll();
    	String jsonArray = Speaker.toJsonArray(all);
    	HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(jsonArray, headers, HttpStatus.CREATED);
    }
}
