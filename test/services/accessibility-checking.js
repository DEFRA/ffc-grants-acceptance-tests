import * as wcagChecker from '../../dist/wcagchecker.js'
import fs from 'fs'
import path from 'path'

const reportDirectory = path.join('./accessibility-reports')
let isInitialised = false

export async function analyseAccessibility(suffix) {
  if (!isInitialised) {
    if (!fs.existsSync(reportDirectory)) {
      fs.mkdirSync(reportDirectory)
    }
    await wcagChecker.init(browser)
    isInitialised = true
    console.log('WCAG CHECKER INITIALISED')
  }
  await wcagChecker.analyse(browser, suffix)
}

export function generateAccessibilityReports() {
  fs.writeFileSync(path.join(reportDirectory, `accessibility-category.html`), wcagChecker.getHtmlReportByCategory(), (err) => {
    if (err) throw err
  })
  fs.writeFileSync(path.join(reportDirectory, `accessibility-guideline.html`), wcagChecker.getHtmlReportByGuideLine(), (err) => {
    if (err) throw err
  })
}
