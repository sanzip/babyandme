/**
 * Created by smainali on 10/28/2016.
 */
 import Image
class ImageService {
    def saveImage(Image imageInstance){
        if (imageInstance == null) {
            return
        }
        if(!imageInstance.save(flush:true)){
            return null
        }
        else{
            return imageInstance;
        }
    }
   }