package com.ldv.apiseries.service

import com.ldv.apiseries.dto.EpisodeDTO
import com.ldv.apiseries.model.entity.Episode
import org.springframework.stereotype.Service
import java.time.format.DateTimeFormatter
import java.util.Locale

@Service
class EpisodeService {

    fun convertToDTO(episode: Episode) : EpisodeDTO {
        val dureeFormatee = "${episode.duree} min"
        val formatter = DateTimeFormatter.ofPattern("d MMMM yyyy",Locale.FRENCH)
        val dateFormatee = episode.date?.format(formatter)

        return EpisodeDTO(
            num = episode.num,
            titre = episode.titre,
            duree = dureeFormatee,
            date = dateFormatee ?: "Date inconnue"
        )
    }

}