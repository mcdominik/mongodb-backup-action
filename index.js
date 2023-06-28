const core = require( '@actions/core');
const exec = require("@actions/exec");

async function run(){
    try {
        const connectionString = core.getInput('connection-string');
        const username = core.getInput('username');
        const src = __dirname

        await exec.exec(`${src}/backup.sh -c ${connectionString} -u ${username}`);
    } catch (error) {
    core.setFailed(error.message)
    }
}
run()