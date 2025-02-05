import { $ } from '@wdio/globals'
import ScoreResult from '../dto/score-result'

class ScoreResultsPage {
  async score() {
    return (await $('//h1/following-sibling::div/p').getText()).trim()
  }

  async results() {
    const scoreResults = []

    for (var i = 1; ; i++) {
      if (!(await $(`//h2/following-sibling::table/tbody/tr[${i}]`).isExisting())) {
        break
      }

      const topic = await $(`//h2/following-sibling::table/tbody/tr[${i}]/td[1]/strong`).getText()
      const answers = await $$(`//h2/following-sibling::table/tbody/tr[${i}]/td[2]/ul/li`).map(async (li) => await li.getText())
      const score = await $(`//h2/following-sibling::table/tbody/tr[${i}]/td[3]/strong`).getText()
      const fundingPriorities = await $$(`//h2/following-sibling::table/tbody/tr[${i}]/td[3]/ul/li`).map(async (li) => await li.getText())

      scoreResults.push(new ScoreResult(topic, answers, score, fundingPriorities))
    }

    return scoreResults
  }
}

export default new ScoreResultsPage()
