package br.com.peixotoinstalacoes.sistema.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.peixotoinstalacoes.sistema.model.Cliente;

@Repository
public class ClienteDao {

	@PersistenceContext
	private EntityManager manager;
	
	public Cliente findOne(Integer id) {
		return manager.find(Cliente.class, id);
	}

	public void save(Cliente cliente) {
		manager.persist(cliente);
	}
	
	public List<Cliente> findAll() {
        return manager.createQuery("select c from Cliente c", Cliente.class).getResultList();
    }

}
