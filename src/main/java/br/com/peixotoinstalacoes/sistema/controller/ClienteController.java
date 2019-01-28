package br.com.peixotoinstalacoes.sistema.controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.peixotoinstalacoes.sistema.dao.ClienteDao;
import br.com.peixotoinstalacoes.sistema.model.Cliente;

@Controller
public class ClienteController {

	@Autowired
	private ClienteDao clienteDao;
	
	@GetMapping({"/cliente" , "/cliente/{id}"})
	public ModelAndView form(@PathVariable("id") Optional<Integer> id, Cliente cliente) {
		ModelAndView mav =new ModelAndView("clientes/cliente");
		
		if(id.isPresent()) {
			cliente = clienteDao.findOne(id.get());
		}
		mav.addObject("cliente", cliente);
		return mav;
	}
	
	@PostMapping
	@Transactional
	public ModelAndView salva(@Valid Cliente cliente, BindingResult result) {
		if(result.hasErrors()) {
			return form(Optional.ofNullable(cliente.getId()), cliente);
		}
		clienteDao.save(cliente);
	    ModelAndView view = new ModelAndView("redirect:/clientes");
	    return view;
	}
	
	
	@GetMapping(value="/clientes")
	public ModelAndView lista() {
		ModelAndView mav = new ModelAndView("clientes/lista");
		mav.addObject("clientes", clienteDao.findAll());
		return mav;
	}
	
	
}
