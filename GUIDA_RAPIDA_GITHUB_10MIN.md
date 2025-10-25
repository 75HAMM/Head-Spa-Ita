# ⚡ GUIDA RAPIDA: GitHub in 10 Minuti

## PRIMA DI INIZIARE: Installa Git

**Windows**: https://git-scm.com/download/win → Esegui installer  
**Mac**: Scrivi in terminale: `brew install git`  
**Linux**: `sudo apt-get install git`

Verifica: `git --version`

---

## 🚀 10 SEMPLICI STEP

### **1️⃣ CREA REPOSITORY SU GITHUB**

- Vai a: https://github.com/new
- **Repository name**: `head-spa-italia`
- **Public**: ✅ (selezionato)
- **Add README**: ✅ (selezionato)
- Clicca: **"Create repository"**

✅ Fatto! Copia l'URL che vedi (es: `https://github.com/tuousername/head-spa-italia.git`)

---

### **2️⃣ CONFIGURA GIT**

Apri **Terminale** (Mac/Linux) o **CMD** (Windows):

```bash
git config --global user.name "Il Tuo Nome"
git config --global user.email "tua.email@example.com"
```

---

### **3️⃣ CLONA REPOSITORY**

```bash
# Scegli cartella (es: Desktop)
cd ~/Desktop

# Clona il progetto
git clone https://github.com/TUO_USERNAME/head-spa-italia.git

# Entra nella cartella
cd head-spa-italia
```

---

### **4️⃣ CREA STRUTTURA CARTELLE**

```bash
mkdir html
mkdir assets
mkdir assets/css
mkdir assets/js
mkdir assets/images
```

---

### **5️⃣ SPOSTA FILE HTML**

Copia i file .html già creati nella cartella:

```bash
# Copia dalla cartella dove li hai scaricati
cp ~/Downloads/chi_siamo_head_spa_italia.html html/chi-siamo.html
cp ~/Downloads/contatti_head_spa_italia.html html/contatti.html
cp ~/Downloads/area_riservata_operatori.html html/area-riservata.html
cp ~/Downloads/blog_head_spa_articoli_3.html html/blog.html
```

**Se non sai dove sono i file:**
- Apri File Manager
- Vai in `/mnt/user-data/outputs/`
- Copia i 4 file HTML

---

### **6️⃣ CREA HOME PAGE (index.html)**

Apri **VS Code** o **Notepad++** e crea file `index.html` nella cartella root:

```html
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Head Spa Italia® - Home</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
        .header { background: linear-gradient(135deg, #1f4e78 0%, #2d5a8c 100%); color: #fff; padding: 50px 20px; text-align: center; }
        .header h1 { font-size: 2.5rem; }
        .container { max-width: 1200px; margin: 0 auto; padding: 40px 20px; }
        .nav { background: #f0f0f0; padding: 15px; margin-bottom: 30px; border-radius: 8px; }
        .nav a { margin-right: 20px; color: #1f4e78; text-decoration: none; font-weight: bold; }
        .nav a:hover { text-decoration: underline; }
        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 20px; }
        .card { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
        .card h3 { color: #1f4e78; margin-bottom: 10px; }
        .card a { color: #1f4e78; text-decoration: none; font-weight: bold; }
        footer { background: #1d1d1d; color: #fff; padding: 20px; text-align: center; margin-top: 50px; }
    </style>
</head>
<body>
    <div class="header">
        <h1>🧘‍♂️ Head Spa Italia®</h1>
        <p>Metodo Head Spa Olistico - Benessere Consapevole</p>
    </div>

    <div class="container">
        <div class="nav">
            <a href="/">🏠 Home</a>
            <a href="html/chi-siamo.html">👥 Chi Siamo</a>
            <a href="html/contatti.html">📧 Contatti</a>
            <a href="html/area-riservata.html">🔐 Area Riservata</a>
            <a href="html/blog.html">📚 Blog</a>
        </div>

        <h2>Benvenuto in Head Spa Italia®</h2>
        <p>Il portale ufficiale dedicato al Metodo Head Spa Olistico®</p>

        <div class="grid">
            <div class="card">
                <h3>👥 Chi Siamo</h3>
                <p>Scopri la nostra missione, visione e valori fondanti.</p>
                <a href="html/chi-siamo.html">Leggi di più →</a>
            </div>
            <div class="card">
                <h3>📧 Contattaci</h3>
                <p>Compila il modulo di contatto o contattaci direttamente.</p>
                <a href="html/contatti.html">Invia messaggio →</a>
            </div>
            <div class="card">
                <h3>🔐 Area Operatori</h3>
                <p>Accesso riservato agli operatori certificati.</p>
                <a href="html/area-riservata.html">Entra →</a>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Head Spa Italia® - Tutti i diritti riservati</p>
    </footer>
</body>
</html>
```

Salva nella cartella: `head-spa-italia/index.html`

---

### **7️⃣ AGGIUNGI TUTTI I FILE A GIT**

```bash
# Dalla cartella head-spa-italia
git add .
```

---

### **8️⃣ FATTI IL PRIMO COMMIT**

```bash
git commit -m "Initial commit: Head Spa Italia con pagine principali"
```

---

### **9️⃣ CARICA SU GITHUB**

```bash
git push -u origin main
```

**Se chiede password:**
- Usa il tuo **username GitHub**
- Genera un **token** qui: https://github.com/settings/tokens
- Usalo come password

---

### **🔟 VISUALIZZA SU LOCALHOST**

```bash
# Dalla cartella head-spa-italia
python3 -m http.server 8000
```

**Apri browser:**
```
http://localhost:8000
```

✅ **FATTO! Ora vedi il sito!**

---

## 📝 MODIFICHE FUTURE (Workflow)

Ogni volta che modifichi qualcosa:

```bash
# 1. Modifica i file con editor

# 2. Aggiungi modifiche
git add .

# 3. Commit
git commit -m "Descrizione della modifica"

# 4. Carica su GitHub
git push

# 5. Refresh localhost (Ctrl+R)
```

---

## 🌐 METTERE ONLINE GRATIS (GitHub Pages)

1. Vai su GitHub → repository head-spa-italia
2. **Settings** (ingranaggio in alto)
3. Scorri fino a **"GitHub Pages"**
4. **Branch**: seleziona "main"
5. Clicca **Save**
6. Aspetta 1-2 minuti
7. Vai a: `https://TUO_USERNAME.github.io/head-spa-italia`

✅ **Sito online gratis!**

---

## 🎯 STRUTTURA FINALE

```
head-spa-italia/
├── index.html ← HOME PAGE
├── README.md
├── .gitignore
└── html/
    ├── chi-siamo.html
    ├── contatti.html
    ├── area-riservata.html
    └── blog.html
```

---

## ❓ PROBLEMI COMUNI

**Q: "fatal: not a git repository"**  
A: Assicurati di essere nella cartella giusta: `cd ~/Desktop/head-spa-italia`

**Q: "git command not found"**  
A: Git non è installato. Scaricalo da https://git-scm.com

**Q: Non riesco a caricare su GitHub**  
A: Crea un Personal Access Token: https://github.com/settings/tokens

**Q: Localhost non funziona**  
A: Assicurati di essere nella cartella e eseguire: `python3 -m http.server 8000`

---

## 🎓 COMANDI UTILI

```bash
# Vedi cosa hai modificato
git status

# Vedi tutti i commit
git log

# Torna indietro (annulla ultimo commit)
git reset --soft HEAD~1

# Aggiorna locale da GitHub
git pull
```

---

**È TUTTO! Hai un sito su GitHub con hosting locale su localhost!** 🚀
