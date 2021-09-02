/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Gerente;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface GerenteFacadeLocal {

    void create(Gerente gerente);

    void edit(Gerente gerente);

    void remove(Gerente gerente);

    Gerente find(Object id);

    List<Gerente> findAll();

    List<Gerente> findRange(int[] range);

    int count();
    
}
