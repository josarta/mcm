/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.DetalleFacturaVenta;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface DetalleFacturaVentaFacadeLocal {

    void create(DetalleFacturaVenta detalleFacturaVenta);

    void edit(DetalleFacturaVenta detalleFacturaVenta);

    void remove(DetalleFacturaVenta detalleFacturaVenta);

    DetalleFacturaVenta find(Object id);

    List<DetalleFacturaVenta> findAll();

    List<DetalleFacturaVenta> findRange(int[] range);

    int count();
    
}
