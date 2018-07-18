CREATE DATABASE IF NOT EXISTS `dbProject`;
USE `dbProject`;

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `idCustomer` int(11) NOT NULL,
  `cashBalance` int(11) DEFAULT NULL,
  `valueStocks` int(11) DEFAULT NULL,
  `valueCustomer` int(11) DEFAULT NULL,
  `numShares` int(11) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `stock_idx` (`stock`),
  CONSTRAINT `stock` FOREIGN KEY (`stock`) REFERENCES `tradeVolume` (`stock`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `customer` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `trades`;
CREATE TABLE `trades` (
  `time` datetime NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `numShares` int(11) DEFAULT NULL,
  `numTraded` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `idCustomer_idx` (`idCustomer`),
  KEY `stock_idx` (`stock`),
  CONSTRAINT `idCustomer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stocks` FOREIGN KEY (`stock`) REFERENCES `tradeVolume` (`stock`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `trades` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tradeVolume`;
CREATE TABLE `tradeVolume` (
  `stock` varchar(45) NOT NULL,
  `numTrades` int(11) DEFAULT NULL,
  `numShares` int(11) DEFAULT NULL,
  PRIMARY KEY (`stock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tradeVolume` WRITE;
UNLOCK TABLES;

