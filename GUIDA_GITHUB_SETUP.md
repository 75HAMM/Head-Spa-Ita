# 📚 Guida Completa: Head Spa Italia® su GitHub + Localhost

## 🎯 Cosa Impareremo

✅ Creare repository GitHub  
✅ Clonare il progetto localmente  
✅ Caricare i file HTML  
✅ Gestire aggiornamenti in tempo reale  
✅ Visualizzare su localhost  
✅ Deployare su GitHub Pages (gratis)  

---

## 📋 Prerequisiti

**Installa questi programmi (se non li hai):**

### **1. Git** (controllo versione)

**Windows:**
- Scarica da: https://git-scm.com/download/win
- Esegui l'installer (clicca sempre "Next")
- Verifica: Apri cmd e scrivi `git --version`

**Mac:**
```bash
brew install git
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get install git
```

### **2. GitHub Account** (gratuito)

- Vai a: https://github.com
- Clicca "Sign up"
- Completa registrazione con email
- Verifica email

### **3. Editor di Testo** (facoltativo ma consigliato)

- **VS Code**: https://code.visualstudio.com/
- **Sublime Text**: https://www.sublimetext.com/
- **Atom**: https://atom.io/

---

## 🚀 GUIDA PASSO-PASSO

### **STEP 1: Creare Repository su GitHub**

1. **Vai su https://github.com/new**

2. **Compila il form:**
   ```
   Repository name: head-spa-italia
   Description: Sito ufficiale Head Spa Italia® - Metodo Head Spa Olistico
   Public (visibile a tutti) ✓
   Initialize with README ✓
   ```

3. **Clicca "Create repository"** ✅

4. **Copia l'URL del repository** (es: `https://github.com/TUO_USERNAME/head-spa-italia.git`)

---

### **STEP 2: Configurare Git Localmente**

**Apri Terminale/CMD** e configura Git:

```bash
# Imposta il tuo nome (come appare sui commit)
git config --global user.name "Il Tuo Nome"

# Imposta la tua email (stessa di GitHub)
git config --global user.email "tua.email@example.com"

# Verifica la configurazione
git config --global --list
```

**Output atteso:**
```
user.name=Il Tuo Nome
user.email=tua.email@example.com
```

---

### **STEP 3: Clonare il Repository Localmente**

**Scegli una cartella dove lavorare** (es: Desktop, Documenti):

```bash
# Naviga nella cartella
cd ~/Desktop

# Clona il repository
git clone https://github.com/TUO_USERNAME/head-spa-italia.git

# Entra nella cartella del progetto
cd head-spa-italia
```

**Output atteso:**
```
Cloning into 'head-spa-italia'...
remote: Counting objects: ...
Unpacking objects: 100% ...
```

---

### **STEP 4: Organizzare la Struttura del Progetto**

**Crea questa struttura di cartelle:**

```bash
# Dalla cartella del progetto
mkdir html
mkdir assets
mkdir assets/css
mkdir assets/js
mkdir assets/images
mkdir assets/downloads
```

**Struttura finale:**
```
head-spa-italia/
├── README.md (già presente)
├── index.html (home page)
├── html/
│   ├── chi-siamo.html
│   ├── contatti.html
│   └── area-riservata.html
├── assets/
│   ├── css/
│   │   └── style.css
│   ├── js/
│   │   └── script.js
│   ├── images/
│   └── downloads/
└── .gitignore
```

---

### **STEP 5: Creare la Home Page (index.html)**

Crea file `index.html` nella cartella root:

```html
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Head Spa Italia® - Metodo Head Spa Olistico</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; line-height: 1.6; color: #1d1d1d; }
        .header { background: linear-gradient(135deg, #1f4e78 0%, #2d5a8c 100%); color: #fff; padding: 60px 40px; text-align: center; }
        .header h1 { font-size: 3rem; margin-bottom: 1rem; }
        .container { max-width: 1200px; margin: 0 auto; padding: 40px; }
        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px; margin: 40px 0; }
        .card { background: #fff; border-radius: 12px; padding: 30px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); transition: all 0.3s ease; }
        .card:hover { transform: translateY(-5px); box-shadow: 0 8px 25px rgba(0,0,0,0.15); }
        .card h3 { color: #1f4e78; margin-bottom: 1rem; }
        .card a { color: #1f4e78; text-decoration: none; font-weight: 600; }
        .card a:hover { text-decoration: underline; }
        .nav { background: #f5f5f7; padding: 20px; margin-bottom: 40px; border-radius: 8px; }
        .nav a { margin-right: 20px; color: #1f4e78; text-decoration: none; font-weight: 500; }
        .nav a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="header">
        <h1>🧘‍♂️ Head Spa Italia®</h1>
        <p>Scopri il Metodo Head Spa Olistico - Benessere Consapevole</p>
    </div>

    <div class="container">
        <div class="nav">
            <a href="/">🏠 Home</a>
            <a href="html/chi-siamo.html">👥 Chi Siamo</a>
            <a href="html/contatti.html">📧 Contatti</a>
            <a href="html/area-riservata.html">🔐 Area Riservata</a>
        </div>

        <h2>Benvenuto in Head Spa Italia®</h2>
        <p>Il portale ufficiale dedicato al Metodo Head Spa Olistico®, una pratica consapevole di rilassamento profondo radicata nella tradizione giapponese.</p>

        <div class="grid">
            <div class="card">
                <h3>📚 Chi Siamo</h3>
                <p>Scopri la nostra missione, visione e i valori fondanti di Head Spa Italia®.</p>
                <a href="html/chi-siamo.html">Leggi di più →</a>
            </div>

            <div class="card">
                <h3>📧 Contattaci</h3>
                <p>Hai domande? Compila il modulo di contatto o contattaci direttamente.</p>
                <a href="html/contatti.html">Invia un messaggio →</a>
            </div>

            <div class="card">
                <h3>🔐 Area Operatori</h3>
                <p>Accesso riservato agli operatori certificati. Dashboard, materiali, attestati.</p>
                <a href="html/area-riservata.html">Entra nell'area →</a>
            </div>
        </div>
    </div>

    <footer style="background: #1d1d1d; color: #fff; padding: 30px 40px; text-align: center; margin-top: 60px;">
        <p>&copy; 2024 Head Spa Italia® - Tutti i diritti riservati</p>
    </footer>
</body>
</html>
```

---

### **STEP 6: Spostare i File HTML Creati**

Copia i file HTML che abbiamo creato:

```bash
# Assumendo che i file siano in /mnt/user-data/outputs

# Copia file nella cartella html
cp /mnt/user-data/outputs/chi_siamo_head_spa_italia.html html/chi-siamo.html
cp /mnt/user-data/outputs/contatti_head_spa_italia.html html/contatti.html
cp /mnt/user-data/outputs/area_riservata_operatori.html html/area-riservata.html
cp /mnt/user-data/outputs/blog_head_spa_articoli_3.html html/blog.html
```

---

### **STEP 7: Creare .gitignore**

Crea file `.gitignore` (per escludere file non necessari):

```
# Sistema operativo
.DS_Store
Thumbs.db
*.swp
*.swo

# Editor
.vscode/
.idea/
*.sublime-workspace

# Node (se usi NPM)
node_modules/
package-lock.json

# Ambiente
.env
.env.local

# Temp
*.tmp
*.bak
```

---

### **STEP 8: Aggiungere i File a Git**

```bash
# Aggiungi tutti i file
git add .

# Verifica cosa stai per caricare
git status
```

**Output atteso:**
```
On branch main
Changes to be committed:
  new file:   index.html
  new file:   html/chi-siamo.html
  ...
```

---

### **STEP 9: Fare il Primo Commit**

```bash
# Crea un commit (descrivi le modifiche)
git commit -m "Initial commit: Struttura base Head Spa Italia con pagine principali"
```

**Output atteso:**
```
[main abcd123] Initial commit: ...
 4 files changed, 500 insertions(+)
 create mode 100644 index.html
 ...
```

---

### **STEP 10: Caricarlo su GitHub**

```bash
# Carica il commit su GitHub (la prima volta)
git push -u origin main

# (Successive volte basta: git push)
```

**Se chiede username/password:**
- Username: il tuo username GitHub
- Password: **NON è la password di GitHub**, ma un "Personal Access Token"

**Come creare Token:**
1. Vai a https://github.com/settings/tokens
2. Clicca "Generate new token"
3. Dai nome e seleziona permessi (repo)
4. Copia il token e usalo come password

---

### **STEP 11: Visualizzare su Localhost**

**Con Python:**

```bash
# Dalla cartella head-spa-italia
python3 -m http.server 8000
```

**Apri browser:**
```
http://localhost:8000
```

**Output nel terminale:**
```
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
127.0.0.1 - - [25/Oct/2024 14:32:10] "GET / HTTP/1.1" 200 -
```

---

### **STEP 12: GitHub Pages (Hosting Gratis)**

Per mettere il sito online gratuitamente:

1. **Vai su GitHub** → Repository head-spa-italia

2. **Vai a Settings** (ingranaggio in alto)

3. **Scorri a "GitHub Pages"**

4. **Seleziona:**
   - Source: "Deploy from a branch"
   - Branch: "main" / "/(root)"

5. **Clicca Save**

6. **Attendi 1-2 minuti**

7. **Accedi a:** `https://TUO_USERNAME.github.io/head-spa-italia`

---

## 🔄 Workflow Quotidiano (Modifiche in Real-Time)

**Quando vuoi apportare modifiche:**

```bash
# 1. Naviga nella cartella
cd ~/Desktop/head-spa-italia

# 2. Modifica i file con editor di testo

# 3. Verifica cosa è stato modificato
git status

# 4. Aggiungi le modifiche
git add .

# 5. Crea un commit descrittivo
git commit -m "Aggiunti articoli blog e corretto layout contatti"

# 6. Carica su GitHub
git push

# 7. GitHub Pages si aggiorna automaticamente (dopo 1-2 min)
```

---

## 📝 Comandi Git Essenziali

```bash
# Visualizza cronologia commit
git log

# Annulla ultimo commit (non ancora caricato)
git reset --soft HEAD~1

# Vedi differenze tra locale e GitHub
git diff

# Aggiorna locale con GitHub (se altri hanno modificato)
git pull

# Crea branch per esperimenti
git checkout -b nuova-feature

# Torna a main
git checkout main
```

---

## 🐛 Troubleshooting

**Problema: "fatal: not a git repository"**
```bash
# Soluzione: assicurati di essere nella cartella giusta
cd ~/Desktop/head-spa-italia
git status
```

**Problema: "Permission denied (publickey)"**
```bash
# Genera SSH key
ssh-keygen -t rsa -b 4096 -C "tua.email@example.com"

# Aggiungi chiave a GitHub: Settings → SSH keys
```

**Problema: File non carica su GitHub**
```bash
# Verifica dimensione file
ls -lh nome-file

# Se > 100MB, usa Git LFS:
git lfs install
git lfs track "*.mp4"
```

---

## 🎯 Prossimi Step

**Dopo il setup base:**

1. ✅ Aggiungere stili CSS centralizzati
2. ✅ Creare sistema di navigazione coerente
3. ✅ Aggiungere form funzionali (con backend)
4. ✅ Implementare autenticazione per Area Riservata
5. ✅ Aggiungere dominio personalizzato (headspaitalia.it)

---

## 📚 Risorse Utili

- **Git Guide**: https://git-scm.com/book/en/v2
- **GitHub Docs**: https://docs.github.com
- **GitHub Pages**: https://pages.github.com
- **Markdown Guide**: https://www.markdownguide.org

---

## 🎓 Video Tutorial (YouTube)

Cerca questi video se vuoi imparare visivamente:
- "Git Tutorial for Beginners"
- "GitHub Pages Deploy Website for Free"
- "Git workflow tutorial"

---

**Fatto! Hai tutto quello che serve per gestire il progetto in real-time su GitHub!** 🚀
