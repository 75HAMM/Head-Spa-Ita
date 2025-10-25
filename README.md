# 🧘‍♂️ Head Spa Italia® - Portale Ufficiale

[![GitHub Pages](https://img.shields.io/badge/Hosting-GitHub%20Pages-success)](https://github.com/HeadSpaItalia/head-spa-italia)
[![License](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0.0-lightgrey.svg)](CHANGELOG.md)

---

## 📖 Descrizione

**Head Spa Italia®** è il portale ufficiale dedicato al **Metodo Head Spa Olistico®**, una pratica consapevole di rilassamento profondo radicata nella tradizione giapponese.

Questo repository contiene il codice sorgente del sito web completo di:
- ✅ Homepage professionale
- ✅ Pagina "Chi Siamo" con missione, visione e valori
- ✅ Pagina Contatti con modulo funzionale
- ✅ Area Riservata Operatori (dashboard, materiali, attestati, quote)
- ✅ Blog con articoli educativi
- ✅ Design responsivo e accessibile

---

## 🚀 Come Iniziare Localmente

### Prerequisiti
- Git installato ([download](https://git-scm.com))
- Python 3.x (per server locale)
- Browser moderno (Chrome, Firefox, Safari)

### Installazione

```bash
# 1. Clona il repository
git clone https://github.com/HeadSpaItalia/head-spa-italia.git

# 2. Naviga nella cartella
cd head-spa-italia

# 3. Avvia il server locale
python3 -m http.server 8000

# 4. Apri il browser
# http://localhost:8000
```

---

## 📁 Struttura del Progetto

```
head-spa-italia/
│
├── index.html                    ← Home page principale
├── README.md                     ← Questo file
├── .gitignore                    ← File da escludere
│
├── html/                         ← Pagine HTML
│   ├── chi-siamo.html           ← Chi siamo, missione, visione, valori
│   ├── contatti.html            ← Modulo contatti e info
│   ├── area-riservata.html      ← Dashboard operatori
│   └── blog.html                ← Articoli educativi
│
├── assets/                       ← Risorse (CSS, JS, immagini)
│   ├── css/
│   │   └── style.css            ← Stili centralizzati
│   ├── js/
│   │   └── script.js            ← Script interattivo
│   ├── images/                  ← Immagini progetto
│   └── downloads/               ← Download PDF (manuali, attestati)
│
└── docs/                         ← Documentazione
    ├── GUIDA_GITHUB_SETUP.md     ← Setup completo GitHub
    └── CHANGELOG.md             ← Cronologia versioni
```

---

## 📄 Pagine Disponibili

### Home (`index.html`)
Landing page con introduzione a Head Spa Italia® e navigazione principale.

### Chi Siamo (`html/chi-siamo.html`)
- **Missione**: Diffondere cultura olistica giapponese in Italia
- **Visione**: Rete nazionale di operatori certificati entro 2027
- **Valori**: Armonia, Formazione, Autenticità, Professionalità
- **Fondatori**: Presentazione team e ruolo Academy
- **Timeline**: Storia dal 2019 a oggi

### Contatti (`html/contatti.html`)
- Modulo di contatto interattivo
- Email ufficiali per diversi dipartimenti
- Informazioni telefono e PEC
- FAQ supporto
- Orari operativi

### Area Riservata (`html/area-riservata.html`)
**Solo Operatori Certificati**
- **Dashboard**: Overview stato certificazione, quote, formazione
- **Profilo**: Informazioni personali e professionali
- **Materiali**: Download manuali, video tutorial, linee guida
- **Attestati**: Download certificati PDF
- **Quote**: Cronologia pagamenti e rinnovo online
- **Eventi**: Webinar, workshop, corsi avanzati
- **Notifiche**: Feed notizie centro
- **Supporto**: Chat help e FAQ

### Blog (`html/blog.html`)
Articoli educativi su:
1. Cos'è la Head Spa e come funziona
2. Origini giapponesi della pratica
3. Benefici per mente e relax

---

## 🛠️ Tecnologie Utilizzate

- **HTML5**: Semantica e struttura
- **CSS3**: Styling responsive e moderno
- **JavaScript (Vanilla)**: Interattività senza dipendenze
- **Responsive Design**: Mobile-first approach
- **Accessibility**: WCAG 2.1 AA compliant

**No framework dipendenze**: Puro HTML/CSS/JS

---

## 🔄 Workflow di Sviluppo

### Aggiungere Modifiche

```bash
# 1. Modifica i file localmente
# (Usa editor: VS Code, Sublime, Atom, etc)

# 2. Verifica le modifiche
git status

# 3. Aggiungi file modificati
git add .

# 4. Commit con messaggio descrittivo
git commit -m "Descrizione della modifica"

# 5. Carica su GitHub
git push

# 6. GitHub Pages si aggiorna automaticamente (1-2 min)
```

### Comandi Utili

```bash
# Visualizza cronologia commit
git log

# Visualizza differenze
git diff

# Torna a versione precedente
git checkout HEAD~1

# Crea branch per feature
git checkout -b nome-feature

# Torna a main
git checkout main
```

---

## 🌐 Deploy su GitHub Pages

Il sito è automaticamente online su:
```
https://headspaitalia.github.io/head-spa-italia
```

**Setup:**
1. Settings → GitHub Pages
2. Source: Deploy from branch
3. Branch: main / (root)
4. Save

Il sito si aggiorna automaticamente con ogni push.

---

## 📋 Sezioni Sviluppo Futuro

- [ ] Integrazione backend per modulo contatti
- [ ] Autenticazione Area Riservata
- [ ] Sistema pagamenti online
- [ ] Calendario corsi dinamico
- [ ] Ricerca articoli blog
- [ ] Email newsletter
- [ ] Chat live supporto
- [ ] Multi-lingua (IT/EN)
- [ ] SEO avanzato
- [ ] Analytics

---

## 📊 Statistiche Progetto

- **Pagine**: 5 principali + blog
- **File HTML**: 5
- **CSS**: Inline (ottimizzato per produzione: separare)
- **JS**: Vanilla (ottimizzato per produzione: minificare)
- **Accessibilità**: WCAG 2.1 AA
- **Performance**: Mobile-first responsive
- **Tempo Caricamento**: < 2 sec (localhost)

---

## 🔐 Sicurezza

- ✅ No dipendenze esterne (HTML/CSS/JS puri)
- ✅ No database (static site)
- ✅ No credenziali nel repository
- ✅ HTTPS su GitHub Pages (automatico)
- ✅ CSP headers (aggiungerli al deployment)

---

## 📝 Licenza

Questo progetto è sotto licenza **Creative Commons BY-NC-ND 4.0**.

Puoi:
- ✅ Condividere il materiale
- ❌ Usare commercialmente
- ❌ Modificare
- ❌ Distribuire versioni modificate

Vedi [LICENSE](LICENSE) per dettagli.

---

## 👥 Contributori

- **Yuki Tanaka** - Co-Fondatrice & Direttore Metodo
- **Marco Rossi** - Co-Fondatore & Direttore Academy
- **Elena Moretti** - Co-Fondatrice & Direttore Strategico

---

## 📧 Contatti

- **Email**: info@headspaitalia.it
- **Academy**: academy@headspaitalia.it
- **Partnership**: partnership@headspaitalia.it
- **Telefono**: +39 02 1234 5678
- **PEC**: headspaitalia@pec.it

---

## 📚 Risorse Utili

- [Git Guide](https://git-scm.com/book/it/v2)
- [GitHub Pages Guide](https://pages.github.com)
- [HTML5 Semantica](https://developer.mozilla.org/en-US/docs/Glossary/Semantics)
- [CSS Grid + Flexbox](https://css-tricks.com)
- [JavaScript Vanilla](https://javascript.info)

---

## 🎯 Roadmap 2025

- Q1: Integrazione backend modulo contatti
- Q2: Autenticazione Area Riservata
- Q3: Sistema pagamenti per quote
- Q4: Multi-lingua (EN)

---

## 📄 Changelog

Vedi [CHANGELOG.md](CHANGELOG.md) per cronologia versioni.

---

## ⭐ Support

Se trovi utile questo progetto, dai una stella ⭐ su GitHub!

---

**Head Spa Italia® © 2024** - Associazione Culturale di Promozione Sociale

*Portale ufficiale del Metodo Head Spa Olistico®*
