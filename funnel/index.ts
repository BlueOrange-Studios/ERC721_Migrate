// TODO work this part on the POC
/*
import winston from "winston";
import Web3 from 'web3';

import info from "./info.json";

const logger = winston.createLogger({
    transports: [
        new winston.transports.Console({
            format: winston.format.combine(winston.format.colorize(), 
                                           winston.format.simple())
        })
    ]
});

interface Window {
    ethereum: any
}
declare let window: Window["ethereum"];

class Funnel {
    constructor() {
        let web3 = new Web3(window.ethereum);
        console.log(window.ethereum);
    }

    connect() {
        logger.info("Connecting to block-chain");
    }
}

let funnel = new Funnel();
funnel.connect();

export default Funnel;
*/