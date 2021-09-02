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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Josarta
 */
@Entity
@Table(name = "orden_de_servicio")
@NamedQueries({
    @NamedQuery(name = "OrdenDeServicio.findAll", query = "SELECT o FROM OrdenDeServicio o")})
public class OrdenDeServicio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Cliente_idCliente")
    private int clienteidCliente;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idOrden_de_Servicio")
    private Integer idOrdendeServicio;
    @Column(name = "Fecha_inicio")
    @Temporal(TemporalType.DATE)
    private Date fechainicio;
    @Column(name = "Fecha_Terminacion")
    @Temporal(TemporalType.DATE)
    private Date fechaTerminacion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Ciudades_idCiudad")
    private int ciudadesidCiudad;
    @Column(name = "Gerente_idGerente")
    private Integer gerenteidGerente;
    @JoinTable(name = "orden_de_servio_has_tecnicos", joinColumns = {
        @JoinColumn(name = "Orden_de Servio_idOrden_de Servio", referencedColumnName = "idOrden_de_Servicio")}, inverseJoinColumns = {
        @JoinColumn(name = "Tecnicos_idEmpleado", referencedColumnName = "idEmpleado")})
    @ManyToMany(fetch = FetchType.LAZY)
    private Collection<Tecnico> tecnicoCollection;
    @JoinColumn(name = "TipoServicio_IdTipo", referencedColumnName = "idTipoServicio")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TipoServicio tipoServicioIdTipo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ordenServicioidOrden", fetch = FetchType.LAZY)
    private Collection<Servicio> servicioCollection;

    public OrdenDeServicio() {
    }

    public OrdenDeServicio(Integer idOrdendeServicio) {
        this.idOrdendeServicio = idOrdendeServicio;
    }

    public OrdenDeServicio(Integer idOrdendeServicio, int clienteidCliente, int ciudadesidCiudad) {
        this.idOrdendeServicio = idOrdendeServicio;
        this.clienteidCliente = clienteidCliente;
        this.ciudadesidCiudad = ciudadesidCiudad;
    }

    public int getClienteidCliente() {
        return clienteidCliente;
    }

    public void setClienteidCliente(int clienteidCliente) {
        this.clienteidCliente = clienteidCliente;
    }

    public Integer getIdOrdendeServicio() {
        return idOrdendeServicio;
    }

    public void setIdOrdendeServicio(Integer idOrdendeServicio) {
        this.idOrdendeServicio = idOrdendeServicio;
    }

    public Date getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(Date fechainicio) {
        this.fechainicio = fechainicio;
    }

    public Date getFechaTerminacion() {
        return fechaTerminacion;
    }

    public void setFechaTerminacion(Date fechaTerminacion) {
        this.fechaTerminacion = fechaTerminacion;
    }

    public int getCiudadesidCiudad() {
        return ciudadesidCiudad;
    }

    public void setCiudadesidCiudad(int ciudadesidCiudad) {
        this.ciudadesidCiudad = ciudadesidCiudad;
    }

    public Integer getGerenteidGerente() {
        return gerenteidGerente;
    }

    public void setGerenteidGerente(Integer gerenteidGerente) {
        this.gerenteidGerente = gerenteidGerente;
    }

    public Collection<Tecnico> getTecnicoCollection() {
        return tecnicoCollection;
    }

    public void setTecnicoCollection(Collection<Tecnico> tecnicoCollection) {
        this.tecnicoCollection = tecnicoCollection;
    }

    public TipoServicio getTipoServicioIdTipo() {
        return tipoServicioIdTipo;
    }

    public void setTipoServicioIdTipo(TipoServicio tipoServicioIdTipo) {
        this.tipoServicioIdTipo = tipoServicioIdTipo;
    }

    public Collection<Servicio> getServicioCollection() {
        return servicioCollection;
    }

    public void setServicioCollection(Collection<Servicio> servicioCollection) {
        this.servicioCollection = servicioCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idOrdendeServicio != null ? idOrdendeServicio.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrdenDeServicio)) {
            return false;
        }
        OrdenDeServicio other = (OrdenDeServicio) object;
        if ((this.idOrdendeServicio == null && other.idOrdendeServicio != null) || (this.idOrdendeServicio != null && !this.idOrdendeServicio.equals(other.idOrdendeServicio))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.sena.entity.mcm.OrdenDeServicio[ idOrdendeServicio=" + idOrdendeServicio + " ]";
    }
    
}
