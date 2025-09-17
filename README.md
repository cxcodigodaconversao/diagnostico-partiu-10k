# 🎯 Professor Partiu 10K - Diagnóstico Estratégico

Uma aplicação web interativa para avaliar o nível atual de competências de professores particulares e identificar oportunidades de crescimento para chegar aos **R$ 10.000/mês**.

## ✨ Funcionalidades

- ✅ **Quiz Interativo** - 26 perguntas personalizadas otimizadas
- ✅ **Navegação Fluida** - Uma pergunta por vez com transições suaves
- ✅ **Roda de Resultado** - Gráfico radar mostrando gaps de competência
- ✅ **Análise Detalhada** - Pontuação individual por área com feedbacks específicos
- ✅ **Design Mobile-First** - Otimizado especialmente para mobile
- ✅ **CTA Integrado** - Direcionamento para programa Professor Partiu 10K

## 🎨 Design

### Paleta de Cores
- **#0c121c** - Azul escuro (fundo principal)
- **#3b82f6** - Azul (destaques)
- **#fbbf24** - Dourado (elementos importantes)
- **#ffffff** - Branco (contraste)

### Tipografia
- **Poppins** - Títulos e elementos importantes
- **Inter** - Textos padrão e interface

## 🚀 Como Fazer Deploy

### Deploy no Netlify (Recomendado)

1. **Faça fork ou clone do repositório:**
   ```bash
   git clone [URL_DO_SEU_REPOSITORIO]
   cd professor-partiu-10k-diagnostico
   ```

2. **Conecte ao Netlify:**
   - Acesse [netlify.com](https://netlify.com)
   - Clique em "New site from Git"
   - Conecte seu repositório GitHub
   - Configure:
     - **Build command:** `echo 'Build complete'`
     - **Publish directory:** `.`

3. **Deploy automático:**
   - O Netlify fará deploy automaticamente
   - Cada push para main/master atualiza o site

### Deploy Manual no Netlify

1. **Baixe os arquivos do projeto**
2. **Comprima em ZIP:**
   - Selecione todos os arquivos
   - Crie um arquivo ZIP
3. **Upload no Netlify:**
   - Acesse netlify.com
   - Arraste o ZIP para a área de deploy
   - Site estará online em poucos segundos

## 📊 Temas Avaliados (10 Áreas)

1. **Pilares de um Professor Valorizado** - 2 perguntas
2. **Sistema de Precificação VHS** - 3 perguntas
3. **Gestão de Tempo (Free Friday)** - 3 perguntas
4. **6 Formas de Divulgar o Trabalho** - 3 perguntas
5. **Estratégias no Instagram** - 3 perguntas
6. **Reunião de Negócios** - 3 perguntas
7. **Técnicas de Venda (Armas da Persuasão)** - 3 perguntas
8. **Contrato e Retenção** - 2 perguntas
9. **Como Escalar o Negócio** - 2 perguntas
10. **Primeiros Passos de um Infoproduto** - 2 perguntas

**Total: 26 perguntas**

## 🔧 Estrutura do Projeto

```
/
├── index.html          # Aplicação principal (diagnóstico completo)
├── netlify.toml        # Configurações do Netlify
├── README.md           # Esta documentação
├── .gitignore          # Arquivos a serem ignorados pelo Git
└── assets/             # Recursos (se houver)
```

## 📱 Funcionalidades Técnicas

- **Responsive Design** - Perfeito em todos os dispositivos
- **Chart.js** para gráficos radar interativos
- **Animações CSS** suaves e profissionais
- **Validação** em tempo real
- **SEO otimizado** com meta tags
- **Performance otimizada** para carregamento rápido

## 🎯 Persona Target

**Professor Mariana/Mario** (28-38 anos)
- Dá aulas particulares de idiomas
- Faturamento atual: R$ 4-6k/mês
- Meta: Chegar aos R$ 10k/mês
- Dores: Agenda cheia mas renda baixa, insegurança em precificação
- Sonhos: Viver só do ensino, ser reconhecido, ter qualidade de vida

## 🎯 Fluxo do Usuário

1. **Início** - Apresentação do diagnóstico
2. **Quiz** - 26 perguntas otimizadas (uma por vez)
3. **Progresso** - Barra de progresso visual
4. **Resultados** - Pontuação geral e gráfico radar
5. **Análise Detalhada** - Feedback específico por área
6. **CTA** - Direcionamento para programa Professor Partiu 10K

## 🌟 Sistema de Scoring

### 4 Níveis de Professores:
- **Professor Iniciante** (0-39%): Transformação completa necessária
- **Professor em Evolução** (40-59%): Muito potencial de crescimento
- **Professor Intermediário+** (60-79%): Bom potencial, gaps estratégicos
- **Professor Expert** (80-100%): Base sólida, refinamento para 10K

### Feedbacks Específicos:
Cada área tem 4 tipos de feedback:
- 🚨 **Urgent** (0-39%): Ação imediata necessária
- 📈 **Improvement** (40-59%): Área de desenvolvimento
- 👍 **Good** (60-79%): Boa base, aperfeiçoamento
- 🏆 **Excellent** (80-100%): Domínio da área

## 🔧 Personalização

### Alterar Perguntas
Edite o array `topics` no JavaScript dentro do `index.html`:

```javascript
const topics = [
    {
        name: 'tema',
        label: 'Nome do Tema',
        color: '#3b82f6', // Cor do tema
        questions: [
            {
                text: 'Sua pergunta aqui?',
                labels: ['Resposta mínima', 'Resposta máxima']
            }
        ]
    }
];
```

### Alterar Links CTA
Modifique os hrefs dos botões finais:
```html
<a href="SEU_LINK_AQUI" class="btn-cta">Quero Participar do Professor Partiu 10K</a>
```

### Personalizar Cores
Altere as variáveis CSS no `<style>`:
```css
/* Cor de fundo */
#0c121c

/* Cor azul */
#3b82f6

/* Cor dourada */
#fbbf24

/* Branco */
#ffffff
```

## 📈 Analytics e Tracking

Para adicionar Google Analytics, insira antes do `</head>` no index.html:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🔒 Segurança

- Headers de segurança configurados no `netlify.toml`
- Proteção XSS e clickjacking
- Content Security Policy
- HTTPS automático pelo Netlify

## 📞 Suporte

Para dúvidas ou suporte técnico:
- Abra uma issue no GitHub
- Documentação do Netlify: [docs.netlify.com](https://docs.netlify.com)

## 📄 Licença

Este projeto é propriedade do **Professor Partiu 10K** e destinado exclusivamente para captação e conversão de professores particulares.

---

**Desenvolvido com ❤️ para ajudar professores a chegarem aos R$ 10.000/mês**

## 🚀 Quick Start

```bash
# Clone o repositório
git clone [URL_DO_REPOSITORIO]

# Entre na pasta
cd professor-partiu-10k-diagnostico

# Abra o index.html no navegador ou faça deploy no Netlify
# Deploy automático: conecte no Netlify via GitHub
# Deploy manual: comprima arquivos em ZIP e arraste no Netlify
```

**🎯 Resultado esperado:** Diagnóstico online capturando e convertendo professores interessados em aumentar sua renda!
