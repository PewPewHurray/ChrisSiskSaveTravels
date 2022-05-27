package com.codingdojo.savetravels.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	
	public Expense findExpenseById(Long id) {
		return expenseRepository.findById(id).orElse(null);
	}
	
	public Expense create(Expense e) {
		return expenseRepository.save(e);
	}
}
