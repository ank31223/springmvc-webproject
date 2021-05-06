package com.io.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.io.spring.dto.Client;
import com.io.spring.dto.Employee;
import com.io.spring.service.EmployeeService;
import com.io.spring.service.EmployeeServiceInterface;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	EmployeeServiceInterface employeeServiceInterface;

	@Autowired
	public void setEmployeeServiceInterface(EmployeeService employeeService) {
		this.employeeServiceInterface = employeeService;
	}

	@RequestMapping(path = "/addEmployee", method = RequestMethod.POST)
	public RedirectView addEmployee(@ModelAttribute Employee employee, Model model) {
		employeeServiceInterface.addEmployee(employee);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/employee/getAllEmployees");
		return redirectView;
	}

	@RequestMapping("/getEmployeeForm")
	public String getEmployeeForm() {
		return "employee/employeeForm";
	}

	@RequestMapping("/getAllEmployees")
	public String getAllEmployees(Model model) {
		List<Employee> employees = employeeServiceInterface.showAllEmployee();
		model.addAttribute("employeeList", employees);
		return "employee/employeeHome";
	}

	@RequestMapping("/deleteEmployee/{id}")
	public RedirectView deleteEmployee(@PathVariable("id") String id) {
		employeeServiceInterface.removeEmployee(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/employee/getAllEmployees");
		return redirectView;
	}

	@RequestMapping(path = "/updateEmployee", method = RequestMethod.POST)
	public RedirectView updateEmployee(@ModelAttribute Employee employee) {
		employeeServiceInterface.updateEmployee(employee);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/employee/getAllEmployees");
		return redirectView;
	}

	@RequestMapping("/getUpdateForm/{id}")
	public String getUpdateForm(@PathVariable("id") String id, Model model) {
		Employee employee = employeeServiceInterface.getEmployeeById(id);
		model.addAttribute("employee", employee);
		return "employee/employeeUpdateForm";
	}

	@RequestMapping("/employeeClients/{id}")
	public String employeeClients(@PathVariable("id") String id, Model model) {
		Employee employee = employeeServiceInterface.getEmployeeById(id);
		List<Client> clientList1 = employeeServiceInterface.getAllClientsUnderEmployee(id);
		List<Client> clientList2 = employeeServiceInterface.getAllAssignableClients(id);
		model.addAttribute("clientList1", clientList1);
		model.addAttribute("clientList2", clientList2);
		model.addAttribute("employee", employee);
		return "employee/employeeClients";
	}

	@RequestMapping("/addClientToEmployee/{employeeId}/{clientId}")
	public RedirectView addClientToEmployee(@PathVariable("employeeId") String employeeId,
			@PathVariable("clientId") String clientId) {
		employeeServiceInterface.addClientToEmployee(employeeId, clientId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/employee/employeeClients/" + employeeId);
		return redirectView;
	}

	@RequestMapping("/removeClientFromEmployee/{employeeId}/{clientId}")
	public RedirectView removeClientFromEmployee(@PathVariable("employeeId") String employeeId,
			@PathVariable("clientId") String clientId) {
		employeeServiceInterface.removeClientFromEmployee(employeeId, clientId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/employee/employeeClients/" + employeeId);
		return redirectView;

	}

}
