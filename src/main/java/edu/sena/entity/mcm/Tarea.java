/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.entity.mcm;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "tareas")
@NamedQueries({
    @NamedQuery(name = "Tarea.findAll", query = "SELECT t FROM Tarea t")})
public class Tarea implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idTareas")
    private Integer idTareas;
    @Column(name = "Feha_inicio")
    @Temporal(TemporalType.DATE)
    private Date fehainicio;
    @Size(max = 45)
    @Column(name = "Duracion")
    private String duracion;
    @Column(name = "Fecha_Fin")
    @Temporal(TemporalType.DATE)
    private Date fechaFin;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tareasidTareas", fetch = FetchType.LAZY)
    private Collection<DetalleTarea> detalleTareaCollection;
    @JoinColumn(name = "Servicios_idConsecutivo", referencedColumnName = "idServicio")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Servicio serviciosidConsecutivo;

    public Tarea() {
    }

    public Tarea(Integer idTareas) {
        this.idTareas = idTareas;
    }

    public Integer getIdTareas() {
        return idTareas;
    }

    public void setIdTareas(Integer idTareas) {
        this.idTareas = idTareas;
    }

    public Date getFehainicio() {
        return fehainicio;
    }

    public void setFehainicio(Date fehainicio) {
        this.fehainicio = fehainicio;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Collection<DetalleTarea> getDetalleTareaCollection() {
        return detalleTareaCollection;
    }

    public void setDetalleTareaCollection(Collection<DetalleTarea> detalleTareaCollection) {
        this.detalleTareaCollection = detalleTareaCollection;
    }

    public Servicio getServiciosidConsecutivo() {
        return serviciosidConsecutivo;
    }

    public void setServiciosidConsecutivo(Servicio serviciosidConsecutivo) {
        this.serviciosidConsecutivo = serviciosidConsecutivo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTareas != null ? idTareas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tarea)) {
            return false;
        }
        Tarea other = (Tarea) object;
        if ((this.idTareas == null && other.idTareas != null) || (this.idTareas != null && !this.idTareas.equals(other.idTareas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.sena.entity.mcm.Tarea[ idTareas=" + idTareas + " ]";
    }
    
}
