package com.ldv.apiseries.model.entity

import com.fasterxml.jackson.annotation.JsonIgnore
import jakarta.persistence.*
import java.time.LocalDate

@Entity
class Episode(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id",nullable = false)
    var id : Long? = null,

    var num : Int,
    var titre : String,
    var duree : Int,
    var date : LocalDate?,

    @ManyToOne
    @JoinColumn(name = "saison_id")
    @JsonIgnore
var saison : Saison? = null
){

}