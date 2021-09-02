/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.entity.mcm;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Josarta
 */
@Entity
@Table(name = "tecnicos")
@NamedQueries({
    @NamedQuery(name = "Tecnico.findAll", query = "SELECT t FROM Tecnico t")})
public class Tecnico implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idEmpleado")
    private Integer idEmpleado;
    @ManyToMany(mappedBy = "tecnicoCollection", fetch = FetchType.LAZY)
    private Collection<OrdenDeServicio> ordenDeServicioCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tecnicosidEmpleado", fetch = FetchType.LAZY)
    private Collection<DetalleTarea> detalleTareaCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tecnicosidTecnicos", fetch = FetchType.LAZY)
    private Collection<Bonificacion> bonificacionCollection;
    @JoinColumn(name = "Usuario_idUsuario", referencedColumnName = "idUsuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuario usuarioidUsuario;

    public Tecnico() {
    }

    public Tecnico(Integer idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public Integer getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(Integer idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public Collection<OrdenDeServicio> getOrdenDeServicioCollection() {
        return ordenDeServicioCollection;
    }

    public void setOrdenDeServicioCollection(Collection<OrdenDeServicio> ordenDeServicioCollection) {
        this.ordenDeServicioCollection = ordenDeServicioCollection;
    }

    public Collection<DetalleTarea> getDetalleTareaCollection() {
        return detalleTareaCollection;
    }

    public void setDetalleTareaCollection(Collection<DetalleTarea> detalleTareaCollection) {
        this.detalleTareaCollection = detalleTareaCollection;
    }

    public Collection<Bonificacion> getBonificacionCollection() {
        return bonificacionCollection;
    }

    public void setBonificacionCollection(Collection<Bonificacion> bonificacionCollection) {
        this.bonificacionCollection = bonificacionCollection;
    }

    public Usuario getUsuarioidUsuario() {
        return usuarioidUsuario;
    }

    public void setUsuarioidUsuario(Usuario usuarioidUsuario) {
        this.usuarioidUsuario = usuarioidUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEmpleado != null ? idEmpleado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tecnico)) {
            return false;
        }
        Tecnico other = (Tecnico) object;
        if ((this.idEmpleado == null && other.idEmpleado != null) || (this.idEmpleado != null && !this.idEmpleado.equals(other.idEmpleado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.sena.entity.mcm.Tecnico[ idEmpleado=" + idEmpleado + " ]";
    }
    
}
