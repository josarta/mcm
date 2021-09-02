/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.sena.entity.mcm;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Josarta
 */
@Entity
@Table(name = "taladro")
@NamedQueries({
    @NamedQuery(name = "Taladro.findAll", query = "SELECT t FROM Taladro t")})
public class Taladro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idTaladro")
    private Integer idTaladro;
    @Size(max = 45)
    @Column(name = "Nombre_taladro")
    private String nombretaladro;
    @JoinColumn(name = "Ciudades_idCiudad", referencedColumnName = "idCiudad")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Ciudad ciudadesidCiudad;
    @JoinColumn(name = "Cliente_idCliente", referencedColumnName = "idCliente")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Cliente clienteidCliente;

    public Taladro() {
    }

    public Taladro(Integer idTaladro) {
        this.idTaladro = idTaladro;
    }

    public Integer getIdTaladro() {
        return idTaladro;
    }

    public void setIdTaladro(Integer idTaladro) {
        this.idTaladro = idTaladro;
    }

    public String getNombretaladro() {
        return nombretaladro;
    }

    public void setNombretaladro(String nombretaladro) {
        this.nombretaladro = nombretaladro;
    }

    public Ciudad getCiudadesidCiudad() {
        return ciudadesidCiudad;
    }

    public void setCiudadesidCiudad(Ciudad ciudadesidCiudad) {
        this.ciudadesidCiudad = ciudadesidCiudad;
    }

    public Cliente getClienteidCliente() {
        return clienteidCliente;
    }

    public void setClienteidCliente(Cliente clienteidCliente) {
        this.clienteidCliente = clienteidCliente;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTaladro != null ? idTaladro.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Taladro)) {
            return false;
        }
        Taladro other = (Taladro) object;
        if ((this.idTaladro == null && other.idTaladro != null) || (this.idTaladro != null && !this.idTaladro.equals(other.idTaladro))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.sena.entity.mcm.Taladro[ idTaladro=" + idTaladro + " ]";
    }
    
}
