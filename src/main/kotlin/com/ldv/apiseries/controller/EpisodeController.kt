package com.ldv.apiseries.controller
import com.ldv.apiseries.dto.EpisodeDTO
import com.ldv.apiseries.model.dao.EpisodeDAO
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import com.ldv.apiseries.model.entity.Episode
import com.ldv.apiseries.service.EpisodeService
import org.springframework.web.bind.annotation.PathVariable
import java.util.*

@RestController
class EpisodeController(val episodeDAO: EpisodeDAO, val episodeService: EpisodeService) {

    @GetMapping("/episodes/{id}")
    fun getEpisodesbyId(@PathVariable id:Long): EpisodeDTO? {
        val episode = episodeDAO.findById(id)
        return if (episode.isPresent){
            episodeService.convertToDTO(episode.get())
        } else {
            null
        }
    }

    @GetMapping("/episodes","/episodes/all")
    fun getAllEpisodes():List<EpisodeDTO>{
        return episodeDAO.findAll().map{episodeService.convertToDTO(it)}
    }

}