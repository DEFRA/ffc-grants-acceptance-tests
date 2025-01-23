import { Page } from 'page-objects/page'

class HomePage extends Page {
  open() {
    return super.open('/grants/start')
  }
}

export default new HomePage()
