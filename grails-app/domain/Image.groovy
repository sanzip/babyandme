/**
 * Created by smainali on 10/28/2016.
 */
class Image {
    String name
    byte[] logo
    String type
    static constraints = {
        logo nullable:false, maxSize:1073741824 // max of 4GB
        type blank:true, nullable:true
        name blank:true, nullable:true
}
        
    }
