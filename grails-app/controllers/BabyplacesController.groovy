import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BabyplacesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Babyplaces.list(params), model: [babyplacesInstanceCount: Babyplaces.count()]
    }

    def show(Babyplaces babyplacesInstance) {
        respond babyplacesInstance
    }

    def create() {
        respond new Babyplaces(params)
    }

    @Transactional
    def save(Babyplaces babyplacesInstance) {
        if (babyplacesInstance == null) {
            notFound()
            return
        }

        if (babyplacesInstance.hasErrors()) {
            respond babyplacesInstance.errors, view: 'create'
            return
        }

        babyplacesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'babyplaces.label', default: 'Babyplaces'), babyplacesInstance.id])
                redirect babyplacesInstance
            }
            '*' { respond babyplacesInstance, [status: CREATED] }
        }
    }

    def edit(Babyplaces babyplacesInstance) {
        respond babyplacesInstance
    }

    @Transactional
    def update(Babyplaces babyplacesInstance) {
        if (babyplacesInstance == null) {
            notFound()
            return
        }

        if (babyplacesInstance.hasErrors()) {
            respond babyplacesInstance.errors, view: 'edit'
            return
        }

        babyplacesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Babyplaces.label', default: 'Babyplaces'), babyplacesInstance.id])
                redirect babyplacesInstance
            }
            '*' { respond babyplacesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Babyplaces babyplacesInstance) {

        if (babyplacesInstance == null) {
            notFound()
            return
        }

        babyplacesInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Babyplaces.label', default: 'Babyplaces'), babyplacesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'babyplaces.label', default: 'Babyplaces'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
