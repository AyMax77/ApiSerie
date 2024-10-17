package com.ldv.apiseries.model.dao
import com.ldv.apiseries.model.entity.Episode
import org.springframework.data.jpa.repository.JpaRepository

interface EpisodeDAO : JpaRepository<Episode,Long>{
}