/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.ModoDePago;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface ModoDePagoFacadeLocal {

    void create(ModoDePago modoDePago);

    void edit(ModoDePago modoDePago);

    void remove(ModoDePago modoDePago);

    ModoDePago find(Object id);

    List<ModoDePago> findAll();

    List<ModoDePago> findRange(int[] range);

    int count();
    
}
