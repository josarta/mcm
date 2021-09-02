/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.FacturaDeVenta;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface FacturaDeVentaFacadeLocal {

    void create(FacturaDeVenta facturaDeVenta);

    void edit(FacturaDeVenta facturaDeVenta);

    void remove(FacturaDeVenta facturaDeVenta);

    FacturaDeVenta find(Object id);

    List<FacturaDeVenta> findAll();

    List<FacturaDeVenta> findRange(int[] range);

    int count();
    
}
