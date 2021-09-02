/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Analistainventario;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface AnalistainventarioFacadeLocal {

    void create(Analistainventario analistainventario);

    void edit(Analistainventario analistainventario);

    void remove(Analistainventario analistainventario);

    Analistainventario find(Object id);

    List<Analistainventario> findAll();

    List<Analistainventario> findRange(int[] range);

    int count();
    
}
