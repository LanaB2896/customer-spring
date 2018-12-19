package com.springboot.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springboot.demo.model.CustomerDetails;

@Controller
public class CustomerController {
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
	
@RequestMapping(value="/add", method= RequestMethod.GET)
//public String read(Model model)
public String read(CustomerDetails customerDetails)
//public String read()
{
//	model.addAttribute("insert", new CustomerDetails());
	return "CustomerList";
}

@RequestMapping(value="/add", method=RequestMethod.POST)
 String read(@Valid @ModelAttribute("customerDetails")CustomerDetails customerDetails,BindingResult bindingResult)
 {
	if(bindingResult.hasErrors())
	{
		return "CustomerList";
	}
	return "hai";
	
 }

}
