#!/bin/bash

# ============================================
# SCRIPT PER AGGIUNGERE LA NAVBAR A TUTTE LE PAGINE
# Head Spa Italia®
# ============================================
#
# COME USARE QUESTO SCRIPT:
# 1. Metti questo file nella stessa cartella dei tuoi file HTML
# 2. Apri il terminale (o Git Bash su Windows)
# 3. Rendi eseguibile lo script: chmod +x aggiungi_navbar.sh
# 4. Esegui lo script: ./aggiungi_navbar.sh
#
# Lo script creerà automaticamente dei backup dei file originali
# con estensione .backup prima di modificarli
# ============================================

echo "============================================"
echo "  INSTALLAZIONE NAVBAR - Head Spa Italia®"
echo "============================================"
echo ""

# Lista delle pagine HTML da modificare
PAGINE=(
    "index.html"
    "metodo_head_spa_olistico_pagina_ufficiale.html"
    "head_spa_academy_corsi.html"
    "trova_centro_head_spa_italia.html"
    "chi-siamo.html"
    "contatti.html"
    "blog.html"
    "area-riservata.html"
    "apri_centro_head_spa_italia_affiliazione.html"
    "attestato_head_spa_ufficiale.html"
)

# Contatore per le pagine modificate
MODIFICATE=0
ERRORI=0

# CSS della navbar (da inserire nel tag <style>)
NAVBAR_CSS='
/* ============================================
   NAVBAR - Barra di navigazione fissa in alto
   ============================================ */
.navbar {
    background-color: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.08);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}
.navbar-container {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 40px;
    height: 70px;
}
.navbar-brand {
    display: flex;
    align-items: center;
    text-decoration: none;
    gap: 12px;
}
.navbar-logo-text {
    font-size: 20px;
    font-weight: 600;
    color: #1d1d1d;
    letter-spacing: -0.01em;
}
.navbar-logo-text sup {
    font-size: 11px;
    color: #666;
}
.navbar-subtitle {
    font-size: 10px;
    color: #999;
    font-weight: 400;
    text-transform: uppercase;
    letter-spacing: 0.8px;
    margin-top: -2px;
}
.navbar-menu {
    display: flex;
    list-style: none;
    gap: 35px;
    align-items: center;
}
.navbar-menu li a {
    text-decoration: none;
    color: #666;
    font-size: 14px;
    font-weight: 500;
    transition: color 0.3s ease;
    padding: 8px 0;
    position: relative;
}
.navbar-menu li a:hover {
    color: #1f4e78;
}
.navbar-menu li a::after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    width: 0;
    height: 2px;
    background-color: #1f4e78;
    transition: all 0.3s ease;
    transform: translateX(-50%);
}
.navbar-menu li a:hover::after {
    width: 100%;
}
.navbar-menu li a.active {
    color: #1f4e78;
    font-weight: 600;
}
.navbar-menu li a.active::after {
    width: 100%;
}
.navbar-cta {
    background: #1f4e78;
    color: #ffffff !important;
    padding: 10px 24px;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
}
.navbar-cta:hover {
    background: #15365a;
    transform: translateY(-1px);
    box-shadow: 0 4px 12px rgba(31, 78, 120, 0.2);
}
.navbar-cta::after {
    display: none;
}
.navbar-hamburger {
    display: none;
    flex-direction: column;
    gap: 5px;
    cursor: pointer;
    padding: 10px;
}
.navbar-hamburger span {
    width: 24px;
    height: 2px;
    background-color: #1d1d1d;
    transition: all 0.3s ease;
    border-radius: 2px;
}
.navbar-hamburger.active span:nth-child(1) {
    transform: rotate(45deg) translate(7px, 7px);
}
.navbar-hamburger.active span:nth-child(2) {
    opacity: 0;
}
.navbar-hamburger.active span:nth-child(3) {
    transform: rotate(-45deg) translate(7px, -7px);
}
@media (max-width: 900px) {
    .navbar-hamburger {
        display: flex;
    }
    .navbar-menu {
        position: fixed;
        top: 70px;
        right: -100%;
        width: 280px;
        height: calc(100vh - 70px);
        background-color: rgba(255, 255, 255, 0.98);
        backdrop-filter: blur(10px);
        flex-direction: column;
        align-items: flex-start;
        padding: 30px;
        gap: 20px;
        box-shadow: -2px 0 10px rgba(0, 0, 0, 0.1);
        transition: right 0.3s ease;
        overflow-y: auto;
    }
    .navbar-menu.active {
        right: 0;
    }
    .navbar-menu li {
        width: 100%;
    }
    .navbar-menu li a {
        display: block;
        width: 100%;
        padding: 12px 0;
        font-size: 15px;
    }
    .navbar-cta {
        width: 100%;
        text-align: center;
        margin-top: 10px;
    }
    .navbar-container {
        padding: 0 20px;
    }
    .navbar-logo-text {
        font-size: 17px;
    }
    .navbar-subtitle {
        font-size: 9px;
    }
}'

# HTML della navbar (da inserire dopo <body>)
NAVBAR_HTML='
<!-- NAVBAR - Barra di navigazione fissa -->
<nav class="navbar">
    <div class="navbar-container">
        <a href="index.html" class="navbar-brand">
            <div>
                <div class="navbar-logo-text">
                    Head Spa Italia<sup>®</sup>
                </div>
                <div class="navbar-subtitle">Metodo Olistico</div>
            </div>
        </a>
        <ul class="navbar-menu" id="navbarMenu">
            <li><a href="index.html">Home</a></li>
            <li><a href="metodo_head_spa_olistico_pagina_ufficiale.html">Il Metodo</a></li>
            <li><a href="head_spa_academy_corsi.html">Academy</a></li>
            <li><a href="trova_centro_head_spa_italia.html">Trova Centro</a></li>
            <li><a href="chi-siamo.html">Chi Siamo</a></li>
            <li><a href="contatti.html" class="navbar-cta">Contattaci</a></li>
        </ul>
        <div class="navbar-hamburger" id="hamburger">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</nav>'

# JavaScript per il menu mobile (da inserire prima di </body>)
NAVBAR_JS='
<script>
document.addEventListener("DOMContentLoaded", function() {
    const hamburger = document.getElementById("hamburger");
    const navbarMenu = document.getElementById("navbarMenu");
    hamburger.addEventListener("click", function() {
        this.classList.toggle("active");
        navbarMenu.classList.toggle("active");
    });
    const menuLinks = document.querySelectorAll(".navbar-menu a");
    menuLinks.forEach(function(link) {
        link.addEventListener("click", function() {
            hamburger.classList.remove("active");
            navbarMenu.classList.remove("active");
        });
    });
    document.addEventListener("click", function(event) {
        const isClickInsideMenu = navbarMenu.contains(event.target);
        const isClickOnHamburger = hamburger.contains(event.target);
        if (!isClickInsideMenu && !isClickOnHamburger && navbarMenu.classList.contains("active")) {
            hamburger.classList.remove("active");
            navbarMenu.classList.remove("active");
        }
    });
});
</script>'

# Ciclo su tutte le pagine
for PAGINA in "${PAGINE[@]}"; do
    echo "Elaboro: $PAGINA"
    
    # Verifica se il file esiste
    if [ ! -f "$PAGINA" ]; then
        echo "  ⚠️  File non trovato, salto..."
        ((ERRORI++))
        continue
    fi
    
    # Crea backup
    cp "$PAGINA" "${PAGINA}.backup"
    echo "  ✓ Backup creato: ${PAGINA}.backup"
    
    # Verifica se la navbar è già presente
    if grep -q "navbar-container" "$PAGINA"; then
        echo "  ⚠️  Navbar già presente, salto..."
        rm "${PAGINA}.backup"
        continue
    fi
    
    # Crea file temporaneo
    TEMP_FILE="${PAGINA}.temp"
    
    # Aggiungi CSS, HTML e JavaScript
    awk -v css="$NAVBAR_CSS" -v html="$NAVBAR_HTML" -v js="$NAVBAR_JS" '
        # Aggiungi CSS prima della chiusura di </style>
        /<\/style>/ { print css; }
        
        # Aggiungi HTML dopo <body>
        /<body>/ { print; print html; next; }
        
        # Aggiungi JavaScript prima di </body>
        /<\/body>/ { print js; }
        
        # Stampa tutte le righe
        { print }
    ' "$PAGINA" > "$TEMP_FILE"
    
    # Sostituisci il file originale
    mv "$TEMP_FILE" "$PAGINA"
    
    echo "  ✅ Navbar aggiunta con successo!"
    ((MODIFICATE++))
    echo ""
done

echo "============================================"
echo "  RIEPILOGO"
echo "============================================"
echo "Pagine modificate: $MODIFICATE"
echo "Errori/Saltate: $ERRORI"
echo ""
echo "✨ Fatto! La navbar è stata aggiunta a tutte le pagine."
echo "I backup dei file originali sono salvati con estensione .backup"
echo ""
echo "⚠️  IMPORTANTE:"
echo "- Apri ogni pagina HTML e aggiungi la classe 'active' al link corrispondente"
echo "- Verifica che il padding delle sezioni iniziali sia corretto"
echo ""
echo "Buon lavoro! 🎉"
