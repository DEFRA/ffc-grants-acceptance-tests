import { $ } from '@wdio/globals'
import SummaryAnswer from '../dto/summary-answer'

class SummaryPage {
  async answers() {
    const answers = []

    for (var i = 1; i <= 2; i++) {
      const question = (await $(`//h1/following-sibling::dl/div[${i}]/dt`).getText()).trim()
      const answer = (await $(`//h1/following-sibling::dl/div[${i}]/dd[1]`).getText()).trim()
      answers.push(new SummaryAnswer(question, answer))
    }

    return answers
  }
}

export default new SummaryPage()
