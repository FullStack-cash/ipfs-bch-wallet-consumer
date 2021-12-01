/*
  Mocks for the Adapter library.
*/

const ipfs = {
  ipfsAdapter: {
    ipfs: {}
  },
  ipfsCoordAdapter: {
    ipfsCoord: {
      useCases: {
        peer: {
          sendPrivateMessage: () => {}
        }
      }
    },
    peerInputHandler: () => {}
  }
}

const localdb = {
  Users: class Users {
    static findById () {}
    static find () {}
    static findOne () {
      return {
        validatePassword: localdb.validatePassword
      }
    }

    async save () {
      return {}
    }

    generateToken () {
      return '123'
    }

    toJSON () {
      return {}
    }

    async remove () {
      return true
    }

    async validatePassword () {
      return true
    }
  },

  validatePassword: () => {
    return true
  }
}

class BchUseCaseMock {
  rpcHandler () {
    return {}
  }

  async getStatus () {
    return {}
  }

  async getBalances () {
    return {}
  }

  async waitForRPCResponse () {
    return {}
  }
}
const bch = new BchUseCaseMock()

module.exports = { ipfs, localdb, bch }
