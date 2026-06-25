CREATE DATABASE IF NOT EXISTS stockmode;

USE stockmode;

-- stockmode.despesas definição

CREATE TABLE `despesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` timestamp NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- stockmode.estoque definição

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_prod` varchar(300) NOT NULL,
  `preco` int(10) NOT NULL,
  `qtd` int(5) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- stockmode.financeiro definição

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_despesas` int(11) DEFAULT NULL,
  `id_estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_despesas_financeiro` (`id_despesas`),
  KEY `fk_estoque_financeiro` (`id_estoque`),
  CONSTRAINT `fk_despesas_financeiro` FOREIGN KEY (`id_despesas`) REFERENCES `despesas` (`id`),
  CONSTRAINT `fk_estoque_financeiro` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
