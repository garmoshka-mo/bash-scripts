import { fork } from "child_process"
import readline from 'readline'

let args = process.argv.slice(2)
var script = args.shift()

run()
function run() {
  let child = fork(script, args)
  child.on("exit", (code) => {
    if (code == 2) {
      console.log("🔄 restarting...")
      run()
    } else if (code == 1) {
      console.log("🛑 Error occurred")
      const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
      })
      rl.question(`! to finish: `, answer => {
        rl.close()
        if (answer == '!') process.exit()
        else run()
      })
    }
  })
}
