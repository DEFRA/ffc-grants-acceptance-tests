import { $$ } from '@wdio/globals'

class SummaryAnswer {
  constructor(question, answer) {
    this.question = question
    this.answer = answer
  }
}

class SummaryPage {
  async answers() {
    const answers = []

    for (const rowElement of await this.#rowElements()) {
      const question = await this.#question(rowElement)
      const answer = await this.#answer(rowElement)
      answers.push(new SummaryAnswer(question, answer))
    }

    return answers
  }

  async #rowElements() {
    return $$('//h1/following-sibling::dl/div')
  }

  async #question(parentElement) {
    return (await parentElement.$('dt').getText()).trim()
  }

  async #answer(parentElement) {
    return (await parentElement.$$('dd')[0].getText()).trim()
  }
}

export { SummaryAnswer, SummaryPage }
