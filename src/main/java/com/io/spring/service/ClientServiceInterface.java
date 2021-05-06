package com.io.spring.service;

import java.util.List;

import com.io.spring.dto.Client;
import com.io.spring.dto.Employee;


public interface ClientServiceInterface {

	void addClient(Client client);

	void removeClient(String clientId);

	List<Client> showAllClient();

	Client getClientById(String clientId);

	void updateClient(Client client2);

	void addEmployeeToClientForEmployee(String clientId, Employee employee);

	void addEmployeeToClient(String clientId, String employeeId);

	List<Employee> getAllEmployeesUnderClient(String clientId);

	List<Client> getAllAssignableClients(List<String> idsList);

	List<Employee> getAllAssignableEmployees(String clientId);

	void removeEmployeeFromClientForEmployee(String clientId, Employee employee);

	void removeEmployeeFromClient(String employeeId, String clientId);

}
