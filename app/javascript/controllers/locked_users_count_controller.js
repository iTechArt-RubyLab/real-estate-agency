import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    async connect() {
        const responce = await fetch('http://localhost:3000/reports/locked-users-count')
        const data = await responce.json()
        this.element.textContent = data.locked_users_count
    }
}