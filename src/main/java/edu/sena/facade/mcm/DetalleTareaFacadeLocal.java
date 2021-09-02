/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.facade.mcm;

import edu.sena.entity.mcm.DetalleTarea;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Josarta
 */
@Local
public interface DetalleTareaFacadeLocal {

    void create(DetalleTarea detalleTarea);

    void edit(DetalleTarea detalleTarea);

    void remove(DetalleTarea detalleTarea);

    DetalleTarea find(Object id);

    List<DetalleTarea> findAll();

    List<DetalleTarea> findRange(int[] range);

    int count();
    
}
