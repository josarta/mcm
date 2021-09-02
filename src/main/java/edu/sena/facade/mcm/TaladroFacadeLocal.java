/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.Taladro;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface TaladroFacadeLocal {

    void create(Taladro taladro);

    void edit(Taladro taladro);

    void remove(Taladro taladro);

    Taladro find(Object id);

    List<Taladro> findAll();

    List<Taladro> findRange(int[] range);

    int count();
    
}
