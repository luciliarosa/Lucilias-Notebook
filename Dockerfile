# ==========================================
# Dockerfile para Lucilia's Notebook
# Otimizado para deploy no Render e Docker Local
# ==========================================
FROM nginx:alpine

# Porta padrao (no Render a variavel PORT e injetada automaticamente como 10000)
ENV PORT=80

# Copia o template de configuracao do Nginx (substitui ${PORT} dinamicamente na inicializacao)
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Copia todos os arquivos do Caderno de Estudos para o diretorio do Nginx
COPY . /usr/share/nginx/html

# Expor portas comuns (80 local, 10000 Render)
EXPOSE 80 10000

# Inicializa o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
