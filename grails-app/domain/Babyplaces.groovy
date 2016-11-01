/**
 * Created by smainali on 10/28/2016.
 */
class Babyplaces {
    String placeName
    String description
    String location
    String contact
    //Image image
    static constraints = {
        placeName nullable:false
        description nullable:false, blank: false, maxSize: 1000
        location nullable:false
        contact nullable:false
      //  image nullable:true, blank:true

    }
}
