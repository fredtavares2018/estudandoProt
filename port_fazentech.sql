-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2020 às 18:53
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `port_fazentech`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos_fazentech`
--

CREATE TABLE `equipamentos_fazentech` (
  `id` int(10) NOT NULL,
  `numero_serie` int(5) NOT NULL,
  `tipo_proprio_alugado` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `valor_aluguel_hora` date NOT NULL,
  `tempo_aluguel` date NOT NULL,
  `prorrogado` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `data_pagamento` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `forma_pagamento` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `parcela` int(20) NOT NULL,
  `acrescimo` int(20) NOT NULL,
  `desconto` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `obs` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios_fazentech`
--

CREATE TABLE `funcionarios_fazentech` (
  `id` int(11) NOT NULL,
  `cpf` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `experiencia` text COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `obs` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos_clientes`
--

CREATE TABLE `pagamentos_clientes` (
  `id` int(10) NOT NULL,
  `id_varejista` int(10) NOT NULL,
  `numero_doc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `serie` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emissao` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `vencimento` date NOT NULL,
  `prorrogado` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `centro_de_custo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `pagamento` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `forma_pagamento` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `baixar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `parcela` int(20) NOT NULL,
  `valor` int(20) NOT NULL,
  `acrescimo` int(20) NOT NULL,
  `desconto` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `obs` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `producao_leite`
--

CREATE TABLE `producao_leite` (
  `id` int(10) NOT NULL,
  `identificacao` int(10) NOT NULL,
  `especie` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_ultima_ordenha` date NOT NULL,
  `temperatura_do_leite` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `produtividade_parto` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `inseminacao_data` date NOT NULL,
  `estimativa_do_parto` date NOT NULL,
  `parto_custo` int(12) NOT NULL,
  `secagem_esperada` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minutos_de_ruminacao_dia` int(20) NOT NULL,
  `ruminacao_dia_kg` int(20) NOT NULL,
  `obs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_produzidos`
--

CREATE TABLE `produtos_produzidos` (
  `id` int(10) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `produto` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipo_produto` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desconto` int(20) NOT NULL,
  `preco_unitario` int(20) NOT NULL,
  `preco_kg` int(20) NOT NULL,
  `total_estoque` int(20) NOT NULL,
  `obs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `varejistas_fazentech`
--

CREATE TABLE `varejistas_fazentech` (
  `id` int(11) NOT NULL,
  `cnpj` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nome_empresa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_prodduto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `obs` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipamentos_fazentech`
--
ALTER TABLE `equipamentos_fazentech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`numero_serie`);

--
-- Índices para tabela `funcionarios_fazentech`
--
ALTER TABLE `funcionarios_fazentech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`cpf`);

--
-- Índices para tabela `pagamentos_clientes`
--
ALTER TABLE `pagamentos_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `producao_leite`
--
ALTER TABLE `producao_leite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`identificacao`);

--
-- Índices para tabela `produtos_produzidos`
--
ALTER TABLE `produtos_produzidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `varejistas_fazentech`
--
ALTER TABLE `varejistas_fazentech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`cnpj`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipamentos_fazentech`
--
ALTER TABLE `equipamentos_fazentech`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios_fazentech`
--
ALTER TABLE `funcionarios_fazentech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamentos_clientes`
--
ALTER TABLE `pagamentos_clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `producao_leite`
--
ALTER TABLE `producao_leite`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos_produzidos`
--
ALTER TABLE `produtos_produzidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `varejistas_fazentech`
--
ALTER TABLE `varejistas_fazentech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
