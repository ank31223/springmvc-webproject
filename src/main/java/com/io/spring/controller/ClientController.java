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
import com.io.spring.service.ClientService;
import com.io.spring.service.ClientServiceInterface;

@Controller
@RequestMapping("/client")
public class ClientController {

	ClientServiceInterface clientServiceInterface;

	@Autowired
	public void setClientServiceInterface(ClientService clientService) {
		this.clientServiceInterface = clientService;
	}

	@RequestMapping("/getAllClients")
	public String getAllClients(Model model) {

		List<Client> clients = clientServiceInterface.showAllClient();
		model.addAttribute("clientList", clients);

		return "client/clientHome";
	}

	@RequestMapping(path = "/addClient", method = RequestMethod.POST)
	public RedirectView addEmployee(@ModelAttribute Client client, Model model) {

		System.out.print("In AddController....................");
		System.out.println(client.getClientName());
		System.out.println(client.getClientAddress());

		clientServiceInterface.addClient(client);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/client/getAllClients");
		return redirectView;
	}

	@RequestMapping("/getClientForm")
	public String getClientForm() {

		return "client/clientForm";
	}

	@RequestMapping("/getClientUpdateForm/{clientId}")
	public String getClientForm(@PathVariable("clientId") String clientId, Model model) {
		Client client = clientServiceInterface.getClientById(clientId);
		model.addAttribute("client", client);
		return "client/clientUpdateForm";
	}

	@RequestMapping("/deleteClient/{id}")
	public RedirectView deleteClient(@PathVariable("id") String clientId) {
		clientServiceInterface.removeClient(clientId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/client/getAllClients");
		return redirectView;
	}

	@RequestMapping(path = "/updateClient", method = RequestMethod.POST)
	public RedirectView updateEmployee(@ModelAttribute Client client) {
		System.out.println(client.getId());
		System.out.println(client.getClientName());
		System.out.println(client.getClientAddress());

		clientServiceInterface.updateClient(client);

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/client/getAllClients");
		return redirectView;
	}

	@RequestMapping("/clientEmployees/{id}")
	public String employeeClients(@PathVariable("id") String clientId, Model model) {

		Client client = clientServiceInterface.getClientById(clientId);
		List<Employee> employeeList1 = clientServiceInterface.getAllEmployeesUnderClient(clientId);
		List<Employee> employeeList2 = clientServiceInterface.getAllAssignableEmployees(clientId);

		model.addAttribute("employeeList1", employeeList1);
		model.addAttribute("employeeList2", employeeList2);
		model.addAttribute("client", client);

		return "client/clientEmployees";
	}

	@RequestMapping("/removeEmployeeFromClient/{clientId}/{employeeId}")
	public RedirectView removeEmployeeFromClient(@PathVariable("clientId") String clientId,
			@PathVariable("employeeId") String employeeId) {

		System.out.println(clientId);
		System.out.println(employeeId);
		clientServiceInterface.removeEmployeeFromClient(clientId,employeeId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/client/clientEmployees/" + clientId);
		return redirectView;

	}

	@RequestMapping("/addEmployeeToClient/{clientId}/{employeeId}")
	public RedirectView addEmployeeToClient(@PathVariable("clientId") String clientId,
			@PathVariable("employeeId") String employeeId) {
		
		clientServiceInterface.addEmployeeToClient(clientId, employeeId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/springproject1/client/clientEmployees/" + clientId);
		return redirectView;
	}

}
