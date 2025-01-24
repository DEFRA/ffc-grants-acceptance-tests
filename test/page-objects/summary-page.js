import { $$ } from '@wdio/globals'

class SummaryAnswer {
  constructor(question, answer) {
    this.question = question
    this.answer = answer
  }
}

class SummaryPage {
  async getAnswers() {
    const rowElements = await this.#getRowElements()
    console.log("RETRIEVED "+rowElements.length+" ELEMENTS")
    return await Promise.all(
      await rowElements.map(async (e) => {
        console.log("RETRIEVING CHILD ELEMENTS FOR ELEMENT: "+ e.elementId)
        const question = await this.#getQuestion(e)
        const answer = await this.#getAnswer(e)
        console.log("FOUND VALUES FOR ELEMENT: " + e.elementId + ", QUESTION: " + question + ", ANSWER: " + answer)
        return new SummaryAnswer(question, answer)
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

export { SummaryAnswer, SummaryPage }
