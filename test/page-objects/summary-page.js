import { $$ } from '@wdio/globals'

class SummaryAnswer {
  constructor(question, answer) {
    this.question = question
    this.answer = answer
  }
}

class SummaryPage {
  async getAnswers() {
    const answers = []
    const rowElements = await this.#getRowElements()

    for (const e of rowElements) {
      const question = await this.#getQuestion(e)
      const answer = await this.#getAnswer(e)
      answers.push(new SummaryAnswer(question, answer))
    }

    return answers
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

export { SummaryAnswer, SummaryPage }
