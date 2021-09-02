/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.ProductoHasFacturaDeVenta;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Josarta
 */
@Stateless
public class ProductoHasFacturaDeVentaFacade extends AbstractFacade<ProductoHasFacturaDeVenta> implements ProductoHasFacturaDeVentaFacadeLocal {

    @PersistenceContext(unitName = "up_mcm")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductoHasFacturaDeVentaFacade() {
        super(ProductoHasFacturaDeVenta.class);
    }
    
}
