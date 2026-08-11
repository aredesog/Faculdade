<div align="center">

# ⚙️ Compilador — UNIFAL-MG

[![UNIFAL-MG](https://img.shields.io/badge/UNIFAL--MG-Ci%C3%AAncia%20da%20Computa%C3%A7%C3%A3o-blue?style=flat-square)](https://www.unifal-mg.edu.br)
[![Status do Projeto](https://img.shields.io/badge/Status-Em%20Desenvolvimento-orange?style=flat-square)](#-etapas-do-projeto)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)

**Projeto Prático desenvolvido para a disciplina de Compiladores da Universidade Federal de Alfenas (UNIFAL-MG)**

[Cronograma](#-cronograma-e-etapas) • [Instalação](#-instalação-e-compilação) • [Como Usar](#-como-executar) • [Estrutura](#-estrutura-do-repositório)

</div>

---

## 📌 Sobre o Projeto

Este repositório contém a implementação completa de um compilador desenvolvido ao longo do semestre acadêmico. O projeto abrange desde a análise léxica até a geração de código final, seguindo as diretrizes e entregas solicitadas no plano de ensino.

---

## 📅 Cronograma e Etapas

O desenvolvimento do compilador está dividido nas seguintes fases principais:

| Etapa | Conteúdo / Módulo | Data de Início | Status |
| :--- | :--- | :---: | :---: |
| **Parte 1** | **Analisador Léxico** & Geradores Léxicos | 01/09 | Concluído / Em Progresso |
| **Parte 2** | **Analisador Sintático** + Léxico | 29/09 | A Fazer |
| **Parte 3** | **Geração de Código** & Extensão do Compilador | 26/10 | A Fazer |
| **Entrega** | **Entrega Final do Trabalho** | **24/11** | Pendente |
| **Defesa**  | **Explicação do Trabalho do Compilador** | **01/12** | Pendente |

---

## 🏗️ Arquitetura do Compilador

```mermaid
graph LR
    A[Código Fonte] -->|01/09 - Parte 1| B[Analisador Léxico]
    B -->|Tokens| C[Analisador Sintático]
    C -->|29/09 - Parte 2| D[Tabela de Símbolos & AST]
    D -->|26/10 - Parte 3| E[Gerador de Código]
    E --> F[Código Final / Executável]