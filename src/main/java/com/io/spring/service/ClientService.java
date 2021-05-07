package com.io.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.io.spring.commonutils.CommonUtils;
import com.io.spring.dao.ClientDao;
import com.io.spring.dto.Client;
import com.io.spring.dto.Employee;

@Service
public class ClientService implements ClientServiceInterface {
	private ClientDao clientDao;
	private EmployeeServiceInterface employeeServiceInterface;

//	public ClientService() {
//		super();
//	}
//
//	public ClientService(ClientDao clientDao, EmployeeService employeeService) {
//		super();
//		this.clientDao = clientDao;
//		this.employeeServiceInterface = employeeService;
//	}

	@Autowired
	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
		System.out.print("setting ClientDao");
	}

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeServiceInterface = employeeService;
		System.out.print("setting employeeService");
	}

	@Override
	public void addClient(Client client) {
		client.setId(CommonUtils.getUUID());
		clientDao.addClient(client);
	}

	@Override
	public void removeClient(String clientId) {
		clientDao.removeClient(clientId);
	}

	@Override
	public List<Client> showAllClient() {
		return clientDao.getAllClients();
	}

	@Override
	public Client getClientById(String clientId) {
		return clientDao.getClientById(clientId);
	}

	@Override
	public void updateClient(Client client2) {
		clientDao.updateClient(client2);
		
	}

	@Override
	public void addEmployeeToClientForEmployee(String clientId, Employee employee) {
		clientDao.addEmployeeToClientForEmployee(clientId,employee);
		
	}

	@Override
	public void addEmployeeToClient(String clientId, String employeeId) {
		Employee employee = employeeServiceInterface.getEmployeeById(employeeId);
		Client client = getClientById(clientId);
		clientDao.addEmployeeToClient(clientId,employee);
		employeeServiceInterface.addClientToEmployeeForClient(employeeId,client);
		
	}

	@Override
	public List<Employee> getAllEmployeesUnderClient(String clientId) {
		return clientDao.getAllEmployeesUnderClient(clientId);
	}

	@Override
	public List<Client> getAllAssignableClients(List<String> idsList) {
		return clientDao.getAllAssignableClients(idsList);
	}

	@Override
	public List<Employee> getAllAssignableEmployees(String clientId) {
		List<String> employeeListIds=new ArrayList<String>();
		for (Employee employee : getAllEmployeesUnderClient(clientId)) {
			employeeListIds.add(employee.getId());
		}
		return employeeServiceInterface.getAllAssignableEmployees(employeeListIds);
	}

	@Override
	public void removeEmployeeFromClientForEmployee(String clientId, Employee employee) {
		clientDao.removeEmployeeFromClientForEmployee(clientId,employee);
		
	}

	@Override
	public void removeEmployeeFromClient(String clientId, String employeeId) {
		 Client client=getClientById(clientId);
		 Employee employee=employeeServiceInterface.getEmployeeById(employeeId);
		 //System.out.println("ankit...."+" "+ client);
		 clientDao.removeEmployeeFromClient(clientId,employee);
		 employeeServiceInterface.removeClientFromEmployeeForClient(employeeId,client);
		 
	}

}
