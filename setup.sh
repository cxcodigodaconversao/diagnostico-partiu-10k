#!/bin/bash

# Script de configuração automática - Professor Partiu 10K
# Execute: bash setup.sh

echo "🎯 Configurando Diagnóstico Professor Partiu 10K"
echo "================================================"

# Verificar se git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Git não está instalado. Instale primeiro: https://git-scm.com/"
    exit 1
fi

# Verificar se curl está instalado
if ! command -v curl &> /dev/null; then
    echo "❌ curl não está instalado."
    exit 1
fi

echo "✅ Dependências verificadas"

# Criar pasta do projeto
PROJECT_NAME="professor-partiu-10k-diagnostico"
if [ -d "$PROJECT_NAME" ]; then
    echo "📁 Pasta $PROJECT_NAME já existe. Removendo..."
    rm -rf "$PROJECT_NAME"
fi

mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME"

echo "📁 Pasta do projeto criada"

# Inicializar repositório
git init
echo "📝 Repositório Git inicializado"

# Criar .gitignore
cat > .gitignore << 'EOL'
# Sistema Operacional
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
desktop.ini

# Editores e IDEs
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log
logs/

# Dependências
node_modules/

# Arquivos temporários
*.tmp
*.temp
.cache/

# Arquivos de ambiente
.env
.env.local

# Build e Deploy
dist/
build/
.netlify/

# Backup
*.bak
*.old
*.orig
EOL

echo "📝 .gitignore criado"

# Criar netlify.toml
cat > netlify.toml << 'EOL'
[build]
  publish = "."
  command = "echo 'Build complete - Professor Partiu 10K'"

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-XSS-Protection = "1; mode=block"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"

[build.environment]
  NODE_VERSION = "18"

[[redirects]]
  from = "/diagnostico"
  to = "/index.html"
  status = 200

[[redirects]]
  from = "/quiz"
  to = "/index.html"
  status = 200

[[redirects]]
  from = "/professor"
  to = "/index.html"
  status = 200
EOL

echo "📝 netlify.toml criado"

# Criar README.md
cat > README.md << 'EOL'
# 🎯 Professor Partiu 10K - Diagnóstico Estratégico

Diagnóstico interativo para professores particulares chegarem aos **R$ 10.000/mês**.

## ✨ Funcionalidades

- ✅ Quiz com 26 perguntas otimizadas
- ✅ Gráfico radar de competências
- ✅ Feedbacks específicos por área
- ✅ Design mobile-first
- ✅ CTA integrado para conversão

## 🚀 Deploy

### Netlify (Recomendado)
1. Conecte este repositório no Netlify
2. Deploy automático configurado
3. Site online em minutos!

### Manual
1. Comprima arquivos em ZIP
2. Arraste no Netlify
3. Site online instantaneamente!

## 📊 Estrutura

- **26 perguntas** em 10 áreas estratégicas
- **4 níveis** de classificação
- **Feedbacks personalizados** por competência
- **Mobile otimizado** para alta conversão

---

**Desenvolvido para ajudar professores a chegarem aos R$ 10.000/mês** 🚀
EOL

echo "📝 README.md criado"

echo ""
echo "⚠️  IMPORTANTE: Você precisa adicionar o arquivo index.html"
echo "📂 Coloque o arquivo index.html nesta pasta: $PWD"
echo ""

# Verificar se index.html existe
if [ -f "index.html" ]; then
    echo "✅ index.html encontrado!"
else
    echo "❌ index.html não encontrado. Adicione o arquivo antes de continuar."
    echo ""
    echo "📋 Próximos passos:"
    echo "1. Coloque o arquivo index.html nesta pasta"
    echo "2. Execute: git add ."
    echo "3. Execute: git commit -m 'Initial commit - Professor Partiu 10K'"
    echo "4. Crie repositório no GitHub"
    echo "5. Execute: git remote add origin https://github.com/SEU_USUARIO/$PROJECT_NAME.git"
    echo "6. Execute: git push -u origin main"
    echo ""
    exit 1
fi

# Adicionar arquivos ao git
git add .

# Commit inicial
git commit -m "🎯 Professor Partiu 10K - Diagnóstico com 26 perguntas

✨ Funcionalidades:
- Quiz interativo com 26 perguntas otimizadas
- 10 áreas de competência para professores particulares
- Design mobile-first responsivo
- Gráfico radar com análise detalhada
- Feedbacks específicos por nível de competência
- Sistema de scoring com 4 níveis
- CTAs otimizados para conversão

📱 Otimizações:
- Interface responsiva para todos dispositivos
- Cores otimizadas: #0c121c, #3b82f6, #fbbf24
- Performance otimizada
- SEO friendly

🚀 Deploy:
- Configurado para Netlify
- Headers de segurança
- Redirects configurados
- Build otimizado"

# Configurar branch principal
git branch -M main

echo ""
echo "✅ Setup completo!"
echo ""
echo "🔗 Próximos passos:"
echo ""
echo "1. 📝 Crie um repositório no GitHub:"
echo "   https://github.com/new"
echo ""
echo "2. 🔗 Conecte este projeto ao GitHub:"
echo "   git remote add origin https://github.com/SEU_USUARIO/$PROJECT_NAME.git"
echo "   git push -u origin main"
echo ""
echo "3. 🚀 Deploy no Netlify:"
echo "   - Acesse: https://netlify.com"
echo "   - New site from Git"
echo "   - Conecte seu repositório"
echo "   - Deploy automático!"
echo ""
echo "4. 🎯 Teste seu site:"
echo "   https://SEU-SITE.netlify.app"
echo ""
echo "================================================"
echo "🎉 Professor Partiu 10K pronto para conversão!"
echo "================================================"
