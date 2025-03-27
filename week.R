func <- function(N, lang="ru", lng=TRUE){
  for(n in seq_along(N)){
    n = round(N[n])
    cat(paste(n, ": ", sep=""))
    lang = tolower(lang)
    if(n < 1){    
      cat(" ")
    }
    else{
      if(lang %in% c("eng", "english")){
        if(lng)
          cat(switch(n, "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"), "\n")
        else
          cat(switch(n, "mon", "tue", "wed", "thu", "fri", "sat", "sun"), "\n")
      }
      else{
        if(lng)
          cat(switch(n, "Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота", "Воскресение"), "\n")
        else
          cat(switch(n, "пн", "вт", "ср", "чт", "пт", "сб", "вс"), "\n")
      }
    }
  }
}

func(c(6,4,2), lang="eng")