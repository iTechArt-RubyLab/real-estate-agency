import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    async connect() {
        const responce = await fetch('http://localhost:3000/reports/commercial-premises-count')
        const data = await responce.json()
        this.element.textContent = data.commercial_premises_count
    }
}