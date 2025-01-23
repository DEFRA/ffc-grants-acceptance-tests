import { Page } from 'page-objects/page'

class HomePage extends Page {
  open() {
    return super.open('/preview/draft/e2e-form/whats-your-name')
  }
}

export default new HomePage()
