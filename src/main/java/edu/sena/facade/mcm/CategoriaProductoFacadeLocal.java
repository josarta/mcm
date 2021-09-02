/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.CategoriaProducto;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface CategoriaProductoFacadeLocal {

    void create(CategoriaProducto categoriaProducto);

    void edit(CategoriaProducto categoriaProducto);

    void remove(CategoriaProducto categoriaProducto);

    CategoriaProducto find(Object id);

    List<CategoriaProducto> findAll();

    List<CategoriaProducto> findRange(int[] range);

    int count();
    
}
