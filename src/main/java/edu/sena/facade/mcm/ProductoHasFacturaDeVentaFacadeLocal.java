/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.ProductoHasFacturaDeVenta;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface ProductoHasFacturaDeVentaFacadeLocal {

    void create(ProductoHasFacturaDeVenta productoHasFacturaDeVenta);

    void edit(ProductoHasFacturaDeVenta productoHasFacturaDeVenta);

    void remove(ProductoHasFacturaDeVenta productoHasFacturaDeVenta);

    ProductoHasFacturaDeVenta find(Object id);

    List<ProductoHasFacturaDeVenta> findAll();

    List<ProductoHasFacturaDeVenta> findRange(int[] range);

    int count();
    
}
