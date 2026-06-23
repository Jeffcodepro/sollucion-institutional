import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["item"]

  connect() {
    this.ticking = false

    this.handleScroll = this.handleScroll.bind(this)
    this.handleResize = this.handleResize.bind(this)

    window.addEventListener("scroll", this.handleScroll, { passive: true })
    window.addEventListener("resize", this.handleResize)

    this.updateItems()
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll)
    window.removeEventListener("resize", this.handleResize)
  }

  handleScroll() {
    this.requestUpdate()
  }

  handleResize() {
    this.requestUpdate()
  }

  requestUpdate() {
    if (this.ticking) return

    window.requestAnimationFrame(() => {
      this.updateItems()
      this.ticking = false
    })

    this.ticking = true
  }

  updateItems() {
    const totalItems = this.itemTargets.length

    if (totalItems === 0) return

    const sectionRect = this.element.getBoundingClientRect()
    const viewportHeight = window.innerHeight

    const revealStart = viewportHeight * 0.78
    const revealEnd = viewportHeight * 0.28

    const rawProgress = (revealStart - sectionRect.top) / (revealStart - revealEnd)
    const progress = this.clamp(rawProgress, 0, 1)

    const visibleCount = Math.ceil(progress * totalItems)

    this.itemTargets.forEach((item, index) => {
      const shouldBeVisible = index < visibleCount
      const isVisible = item.classList.contains("is-visible")

      if (shouldBeVisible && !isVisible) {
        this.showItem(item, index)
      }

      if (!shouldBeVisible && isVisible) {
        this.hideItem(item, index, totalItems)
      }
    })
  }

  showItem(item, index) {
    item.style.transitionDelay = `${index * 110}ms`
    item.classList.add("is-visible")
  }

  hideItem(item, index, totalItems) {
    const reverseIndex = totalItems - 1 - index

    item.style.transitionDelay = `${reverseIndex * 110}ms`
    item.classList.remove("is-visible")
  }

  clamp(value, min, max) {
    return Math.min(Math.max(value, min), max)
  }
}
