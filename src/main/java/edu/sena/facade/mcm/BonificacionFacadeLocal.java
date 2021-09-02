/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Bonificacion;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface BonificacionFacadeLocal {

    void create(Bonificacion bonificacion);

    void edit(Bonificacion bonificacion);

    void remove(Bonificacion bonificacion);

    Bonificacion find(Object id);

    List<Bonificacion> findAll();

    List<Bonificacion> findRange(int[] range);

    int count();
    
}
