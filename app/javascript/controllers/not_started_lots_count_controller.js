import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    async connect() {
        const responce = await fetch('http://localhost:3000/reports/not-started-lots-count')
        const data = await responce.json()
        this.element.textContent = data.not_started_lots_count
    }
}