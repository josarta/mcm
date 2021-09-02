/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.OrdenDeCompra;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface OrdenDeCompraFacadeLocal {

    void create(OrdenDeCompra ordenDeCompra);

    void edit(OrdenDeCompra ordenDeCompra);

    void remove(OrdenDeCompra ordenDeCompra);

    OrdenDeCompra find(Object id);

    List<OrdenDeCompra> findAll();

    List<OrdenDeCompra> findRange(int[] range);

    int count();
    
}
