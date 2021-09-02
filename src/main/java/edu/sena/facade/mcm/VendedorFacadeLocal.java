/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Vendedor;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface VendedorFacadeLocal {

    void create(Vendedor vendedor);

    void edit(Vendedor vendedor);

    void remove(Vendedor vendedor);

    Vendedor find(Object id);

    List<Vendedor> findAll();

    List<Vendedor> findRange(int[] range);

    int count();
    
}
