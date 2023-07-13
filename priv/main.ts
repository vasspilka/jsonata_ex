import http, { IncomingMessage, ServerResponse } from "http";
import jsonata from "jsonata";


const host = 'localhost';
const port = 8080;

const requestListener = function (req: IncomingMessage, res: ServerResponse) {

    let body = '';
    req.on('data', (chunk) => {
        body += chunk;
    });
    req.on('end', () => {

        let data = JSON.parse(body)

        const expression = jsonata(data.template);
        expression.evaluate(data.data).then(result => {
            res.setHeader("Content-Type", "application/json");
            res.writeHead(200);
            res.end(JSON.stringify(result));
        })

    });
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});
