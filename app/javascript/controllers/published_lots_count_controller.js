import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    async connect() {
        const responce = await fetch('http://localhost:3000/reports/published-lots-count')
        const data = await responce.json()
        this.element.textContent = data.published_lots_count
    }
}