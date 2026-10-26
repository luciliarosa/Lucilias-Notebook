# 📓 Lucilia's Notebook — Caderno Digital Full-Stack

<p align="center">
  <strong>Caderno interativo de anotações, laboratórios práticos e guias de referência para desenvolvimento de software full-stack, computação e idiomas.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Ativo-success?style=flat-square" alt="Status">
  <img src="https://img.shields.io/badge/Stack-HTML5%20%7C%20CSS3%20%7C%20JavaScript-blue?style=flat-square" alt="Stack">
  <img src="https://img.shields.io/badge/Deploy-Docker%20%7C%20Render-46E3B7?style=flat-square" alt="Deploy">
  <img src="https://img.shields.io/badge/Licen%C3%A7a-MIT-green?style=flat-square" alt="Licença">
</p>

---

## 📌 Sobre o Projeto

O **Lucilia's Notebook** é uma plataforma didática e interativa criada para documentar e consultar conceitos de desenvolvimento de software, algoritmos, arquitetura de sistemas, banco de dados e comunicação técnica. 

Projetado com estética de caderno digital limpo (*Paper Theme*), tipografia legível e assistência interativa de estudos integrada via **Chatbot em JavaScript puro**.

---

## 📚 Estrutura de Módulos de Estudo

```text
Lucilias-Notebook/
├── index.html                     # Redirecionador para a página principal
├── notebook.html                  # Catálogo interativo de estudos, busca e labs
├── chatbot.js                     # Assistente virtual de estudos em JavaScript puro
│
├── frontend/                      # Tecnologias de Interface & Cliente
│   ├── html-css/                  # Fundamentos de HTML5 Semântico, Acessibilidade e CSS3
│   ├── js/                        # JavaScript ES6+, Manipulação de DOM e Eventos
│   └── react/                     # Componentização, Virtual DOM e SPAs
│
├── backend/                       # Tecnologias de Servidor & Banco de Dados
│   ├── python/                    # Fundamentos, POO, Estruturas de Dados, Flask & Django
│   └── bd/                        # Modelagem Relacional, PostgreSQL e Consultas SQL
│
├── devops/                        # Controle de Versão & Boas Práticas
│   └── git/                       # Git Flow, Commits Semânticos, Branches e GitHub
│
├── fundamentals/                  # Ciência da Computação & Base Lógica
│   └── logica/                    # Lógica de Programação, Algoritmos e Jogo Didático
│
└── languages/                     # Idiomas & Comunicação Profissional
    ├── english/                   # Gramática, Vocabulário Tech e Entrevistas Internacionais
    └── francais/                  # Introdução e Vocabulário em Francês
```

---

## 🐳 Executando com Docker

O projeto já conta com configuração Nginx Alpine completa com suporte dinâmico a portas e compressão Gzip.

### 1. Com Docker Compose (Recomendado para Desenvolvimento Local)

```bash
# Na raiz do projeto:
docker compose up --build
```
Acesse no seu navegador: `http://localhost:8080`

### 2. Com Docker CLI Direto

```bash
# Construir a imagem:
docker build -t lucilias-notebook .

# Executar o container na porta 8080:
docker run -d -p 8080:80 --name notebook_app lucilias-notebook
```

---

## 🚀 Como Fazer o Deploy no Render

O projeto está 100% pronto para publicação no [Render](https://render.com) utilizando container Docker.

### Opção A: Deploy Automático via Repositório Git (Recomendado)

1. Suba este projeto em um repositório no seu GitHub (ex: `https://github.com/luciliarosa/lucilias-notebook`).
2. Acesse seu painel no [Render Dashboard](https://dashboard.render.com).
3. Clique em **New +** e selecione **Web Service**.
4. Conecte sua conta do GitHub e selecione o repositório do caderno.
5. O Render detectará automaticamente o arquivo `Dockerfile`:
   - **Name**: `lucilias-notebook` (ou o nome que preferir)
   - **Region**: Qualquer uma de sua preferência (ex: *Oregon (US West)* ou *Frankfurt*)
   - **Branch**: `main`
   - **Runtime**: `Docker`
   - **Plan Instance**: `Free`
6. Clique no botão **Create Web Service**.
7. O Render fará o build da imagem Docker e disponibilizará uma URL pública gratuita (ex: `https://lucilias-notebook.onrender.com`).

> **Nota Técnica:** O container utiliza o template dinâmico de porta `${PORT}` do Nginx. O Render automaticamente injeta a variável de ambiente `PORT` e o Nginx se conecta a ela sem necessidade de configurações adicionais.

### Opção B: Deploy via Blueprint (`render.yaml`)

1. No dashboard do Render, clique em **Blueprints** no menu lateral.
2. Conecte o repositório do projeto.
3. O Render lerá o arquivo [`render.yaml`](render.yaml) e configurará todo o serviço automaticamente.

---

## 💻 Execução Local sem Docker

Como o caderno foi construído com tecnologias web nativas (HTML, CSS e JavaScript puro):

1. **Abrir diretamente:** Dê um duplo clique no arquivo [`index.html`](index.html).
2. **Via Servidor Local Python:**
   ```bash
   python -m http.server 8000
   ```
   Acesse: `http://localhost:8000`

---

## 👩‍💻 Autora

Desenvolvido por **Lucilia Rosa**  
- **Portfólio:** [GitHub](https://github.com/luciliarosa) • [LinkedIn](https://www.linkedin.com/in/lucilia-rosa)
