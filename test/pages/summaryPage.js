import { $$ } from '@wdio/globals'
import { SummaryQuestion } from '../dto/SummaryQuestion'

export class SummaryPage {
  async getAnswers() {
    const rowElements = await this.#getRowElements()
    return await Promise.all(
      await rowElements.map(async (e) => {
        return new SummaryQuestion(
          await this.#getQuestion(e),
          await this.#getAnswer(e)
        )
      })
    )
  }

  async #getRowElements() {
    return $$('//h1/following-sibling::dl/div')
  }

  async #getQuestion(parentElement) {
    const text = await parentElement.$('dt').getText()
    return text.trim()
  }

  async #getAnswer(parentElement) {
    const text = await parentElement.$$('dd')[0].getText()
    return text.trim()
  }
}
