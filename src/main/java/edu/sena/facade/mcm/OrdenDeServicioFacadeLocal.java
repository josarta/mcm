/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.OrdenDeServicio;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface OrdenDeServicioFacadeLocal {

    void create(OrdenDeServicio ordenDeServicio);

    void edit(OrdenDeServicio ordenDeServicio);

    void remove(OrdenDeServicio ordenDeServicio);

    OrdenDeServicio find(Object id);

    List<OrdenDeServicio> findAll();

    List<OrdenDeServicio> findRange(int[] range);

    int count();
    
}
