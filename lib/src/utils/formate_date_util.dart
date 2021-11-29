/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

/* 
* Formata a data acompanhado 
* com a hora(se quiseres) 
* -> Ex: 10/Nov/2021 com hora 
* -> 10/Nov/2021 10h30 
*/
String formateDate(DateTime? date, {bool showTime = false}) {
  if (date == null) {
    return "Sem data";
  } else {
    String? month;

    switch (date.month) {
      case 1:
        month = "Jan";
        break;

      case 2:
        month = "Fev";
        break;

      case 3:
        month = "Mar";
        break;

      case 4:
        month = "Abr";
        break;

      case 5:
        month = "Mai";
        break;

      case 6:
        month = "Jun";
        break;

      case 7:
        month = "Jul";
        break;

      case 8:
        month = "Ago";
        break;

      case 9:
        month = "Set";
        break;

      case 10:
        month = "Out";
        break;

      case 11:
        month = "Nov";
        break;

      case 12:
        month = "Dez";
        break;
    }

    return !showTime
        ? "${date.day}/$month/${date.year}"
        : "${date.day}/$month/${date.year}\n${date.hour}h${date.minute.toString().length == 1 ? '0' + date.minute.toString() : date.minute.toString()}";
  }
}

/* Formata a hora acompanhado com o dia da semana -> Ex: Seg, 10h35 */
String formateTimeWithWeekDay(DateTime? date) {
  if (date == null) {
    return "Sem data";
  } else {
    String? weekDay;

    switch (date.weekday) {
      case 1:
        weekDay = "Seg";
        break;

      case 2:
        weekDay = "Ter";
        break;

      case 3:
        weekDay = "Qua";
        break;

      case 4:
        weekDay = "Qui";
        break;

      case 5:
        weekDay = "Sex";
        break;

      case 6:
        weekDay = "Sab";
        break;

      case 7:
        weekDay = "Dom";
        break;

    }

    return "$weekDay, ${date.hour}h${date.minute.toString().length == 1 ? '0' + date.minute.toString() : date.minute.toString()}";
  }
}
