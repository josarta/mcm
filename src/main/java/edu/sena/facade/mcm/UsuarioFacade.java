/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Usuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Josarta
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {

    @PersistenceContext(unitName = "up_mcm")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
       @Override
    public Usuario validarUsuario(String correoIn, String claveIn) {
        try {
            Query qt = em.createQuery("SELECT u FROM Usuario u WHERE u.email = :correoIn AND u.pass = :claveIn");
            qt.setParameter("correoIn", correoIn);
            qt.setParameter("claveIn", claveIn);            
            return (Usuario) qt.getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public Usuario recuperarClave(String correoIn) {
        try {
            //Query qt = em.createNativeQuery("SELECT * FROM usuario where email = ?");
            //qt.setParameter(1, correoIn);
           Query qt = em.createQuery("SELECT u FROM Usuario u WHERE u.email = :correoIn");
           qt.setParameter("correoIn", correoIn);
            return (Usuario) qt.getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }
    
}
