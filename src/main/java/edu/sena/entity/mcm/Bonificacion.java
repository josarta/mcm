/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.entity.mcm;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Josarta
 */
@Entity
@Table(name = "bonificacion")
@NamedQueries({
    @NamedQuery(name = "Bonificacion.findAll", query = "SELECT b FROM Bonificacion b")})
public class Bonificacion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idBonificacion")
    private Integer idBonificacion;
    @Column(name = "Fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Size(max = 45)
    @Column(name = "Total")
    private String total;
    @JoinColumn(name = "Tecnicos_idTecnicos", referencedColumnName = "idEmpleado")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Tecnico tecnicosidTecnicos;

    public Bonificacion() {
    }

    public Bonificacion(Integer idBonificacion) {
        this.idBonificacion = idBonificacion;
    }

    public Integer getIdBonificacion() {
        return idBonificacion;
    }

    public void setIdBonificacion(Integer idBonificacion) {
        this.idBonificacion = idBonificacion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public Tecnico getTecnicosidTecnicos() {
        return tecnicosidTecnicos;
    }

    public void setTecnicosidTecnicos(Tecnico tecnicosidTecnicos) {
        this.tecnicosidTecnicos = tecnicosidTecnicos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idBonificacion != null ? idBonificacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bonificacion)) {
            return false;
        }
        Bonificacion other = (Bonificacion) object;
        if ((this.idBonificacion == null && other.idBonificacion != null) || (this.idBonificacion != null && !this.idBonificacion.equals(other.idBonificacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.sena.entity.mcm.Bonificacion[ idBonificacion=" + idBonificacion + " ]";
    }
    
}
