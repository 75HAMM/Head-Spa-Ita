#!/bin/bash
# HTML del navbar
NAVBAR='<!-- HEADER NAVIGAZIONE -->
<header class="navbar">
    <div class="navbar-container">
        <div class="navbar-logo">
            <a href="index.html">🧘 Head Spa Italia®</a>
        </div>
        <nav class="navbar-menu">
            <a href="index.html">Home</a>
            <a href="chi-siamo.html">Chi Siamo</a>
            <a href="metodo_head_spa_olistico_pagina_ufficiale.html">Il Metodo</a>
            <a href="head_spa_academy_corsi.html">Academy</a>
            <a href="blog.html">Blog</a>
            <a href="contatti.html">Contatti</a>
        </nav>
        <div class="navbar-cta">
            <a href="contatti.html" class="btn-small">Prenota</a>
        </div>
    </div>
</header>'

for file in *.html; do
    if [ "$file" != "index.html" ] && grep -q "<body" "$file"; then
        if ! grep -q 'class="navbar"' "$file"; then
            echo "  ✓ $file"
            sed -i '' '/<body[^>]*>/a\'"$NAVBAR"'' "$file"
            sed -i '' '/<\/head>/i\<style>.navbar{background:#fff;border-bottom:1px solid #e5e5e7;position:sticky;top:0;z-index:1000}.navbar-container{max-width:1200px;margin:0 auto;padding:0 40px;display:flex;align-items:center;justify-content:space-between;height:60px}.navbar-logo a{font-size:1.2rem;font-weight:600;color:#1f4e78;text-decoration:none}.navbar-menu{display:flex;gap:30px}.navbar-menu a{color:#1d1d1d;text-decoration:none;font-weight:500}.navbar-menu a:hover{color:#1f4e78}.btn-small{padding:8px 16px;background:#1f4e78;color:#fff;border-radius:8px;text-decoration:none;font-size:0.9rem}.btn-small:hover{background:#15365a}@media(max-width:768px){.navbar-menu{width:100%}}</style>' "$file"
        fi
    fi
done
echo "✅ Fatto!"
ENDSCRIPTbash add_navbar_simple.sh
git add .
git commit -m "Add: navbar navigazione a tutte le pagine"
git push origin main
