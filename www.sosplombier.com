<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <title>SOS PLOMBIER - Plombier à Bruxelles</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    :root {
      --bleu: #007bff;
      --noir: #000000;
      --blanc: #ffffff;
      --gris: #f4f4f4;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    }

    body {
      background: var(--blanc);
      color: var(--noir);
      line-height: 1.6;
    }

    a {
      text-decoration: none;
    }

    header {
      background: var(--noir);
      color: var(--blanc);
      padding: 1rem 2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: sticky;
      top: 0;
      z-index: 10;
    }

    header .logo {
      font-weight: 800;
      letter-spacing: 1px;
    }

    header nav a {
      color: var(--blanc);
      margin-left: 1.5rem;
      font-size: 0.95rem;
      text-transform: uppercase;
    }

    header nav a:hover {
      color: var(--bleu);
    }

    .hero {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      padding: 3rem 2rem;
      gap: 2rem;
      align-items: center;
      background: linear-gradient(135deg, #ffffff 0%, #e9f2ff 100%);
    }

    .hero-texte h1 {
      font-size: 2.4rem;
      margin-bottom: 1rem;
    }

    .hero-texte h1 span {
      color: var(--bleu);
    }

    .hero-texte p {
      margin-bottom: 1.5rem;
      max-width: 480px;
    }

    .btn-primaire {
      background: var(--bleu);
      color: var(--blanc);
      border: none;
      padding: 0.8rem 1.6rem;
      border-radius: 999px;
      cursor: pointer;
      font-weight: 600;
      text-transform: uppercase;
      font-size: 0.9rem;
      letter-spacing: 0.5px;
    }

    .btn-primaire:hover {
      opacity: 0.9;
    }

    .btn-3d-contact {
      display: inline-block;
      margin-top: 1rem;
      padding: 0.9rem 1.8rem;
      border-radius: 999px;
      background: linear-gradient(145deg, #007bff, #0056b3);
      color: #ffffff;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      box-shadow: 0 8px 18px rgba(0, 0, 0, 0.25);
      border: 1px solid #004a99;
    }

    .btn-3d-contact:hover {
      transform: translateY(-1px);
      box-shadow: 0 10px 22px rgba(0, 0, 0, 0.3);
    }

    .hero-image {
      background: var(--blanc);
      border-radius: 16px;
      padding: 1rem;
      border: 1px solid #dde3f0;
      text-align: center;
      min-height: 220px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #555;
      font-size: 0.95rem;
    }

    section {
      padding: 3rem 2rem;
    }

    .titre-section {
      text-align: center;
      margin-bottom: 2rem;
    }

    .titre-section h2 {
      font-size: 1.8rem;
      margin-bottom: 0.5rem;
    }

    .titre-section p {
      color: #555;
      font-size: 0.95rem;
    }

    .services-grille {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 1.8rem;
    }

    .service-carte {
      background: var(--gris);
      border-radius: 14px;
      padding: 1.4rem;
      border: 1px solid #e0e0e0;
      display: flex;
      flex-direction: column;
      gap: 0.8rem;
    }

    .service-image {
      background: var(--blanc);
      border-radius: 10px;
      height: 160px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 1px dashed #cfd6e5;
      color: #777;
      font-size: 0.85rem;
      text-align: center;
      padding: 0.5rem;
    }

    .service-carte h3 {
      font-size: 1.05rem;
    }

    .service-carte p {
      font-size: 0.9rem;
      color: #555;
    }

    .badge {
      display: inline-block;
      background: var(--bleu);
      color: var(--blanc);
      padding: 0.2rem 0.6rem;
      border-radius: 999px;
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .apropos {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
      align-items: center;
    }

    .apropos ul {
      list-style: none;
    }

    .apropos li::before {
      content: "• ";
      color: var(--bleu);
      font-weight: bold;
    }

    .contact-grille {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
    }

    .contact-info p {
      margin-bottom: 0.5rem;
    }

    .contact-formulaire {
      background: var(--gris);
      padding: 1.5rem;
      border-radius: 14px;
      border: 1px solid #e0e0e0;
    }

    .contact-formulaire label {
      display: block;
      font-size: 0.9rem;
      margin-bottom: 0.3rem;
    }

    .contact-formulaire input,
    .contact-formulaire textarea {
      width: 100%;
      padding: 0.6rem;
      margin-bottom: 0.9rem;
      border-radius: 8px;
      border: 1px solid #ccc;
      font-size: 0.9rem;
    }

    .contact-formulaire textarea {
      min-height: 120px;
      resize: vertical;
    }

    footer {
      background: var(--noir);
      color: var(--blanc);
      text-align: center;
      padding: 1.2rem;
      font-size: 0.85rem;
    }

    @media (max-width: 600px) {
      header {
        flex-direction: column;
        align-items: flex-start;
        gap: 0.5rem;
      }
    }
  </style>
</head>
<body>

  <!-- EN-TÊTE -->
  <header>
    <div class="logo">SOS PLOMBIER</div>
    <nav>
      <a href="#accueil">Accueil</a>
      <a href="#services">Services</a>
      <a href="#apropos">À propos</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <!-- ACCUEIL -->
  <section id="accueil" class="hero">
    <div class="hero-texte">
      <h1><span>SOS PLOMBIER</span><br />Plomberie rapide & fiable 24/7</h1>
      <p>
        Interventions professionnelles pour tous vos besoins en plomberie :
        urgences, réparations, installations et entretien complet à Bruxelles et environs.
      </p>
      <button class="btn-primaire" onclick="document.getElementById('contact').scrollIntoView({behavior:'smooth'})">
        Demander une intervention
      </button>
      <br />
      <a href="https://wa.me/32467646321" target="_blank" class="btn-3d-contact">
        Contact direct
      </a>
    </div>
    <div class="hero-image">
      Espace pour une image 3D principale (bannière SOS PLOMBIER).
    </div>
  </section>

  <!-- SERVICES -->
  <section id="services">
    <div class="titre-section">
      <h2>Nos services de plomberie</h2>
      <p>Des solutions complètes pour tous vos problèmes de plomberie.</p>
    </div>

    <div class="services-grille">
      <div class="service-carte">
        <span class="badge">Service</span>
        <h3>Réparation de la pression d'eau</h3>
        <div class="service-image">
          Image 3D ici : Réparation de la pression d'eau.
        </div>
        <p>
          Diagnostic et correction des problèmes de faible ou forte pression
          d'eau pour un confort optimal.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Urgence 24/7</span>
        <h3>Service d'urgence 24/7</h3>
        <div class="service-image">
          Image 3D ici : Intervention d'urgence de nuit / 24h/24.
        </div>
        <p>
          Intervention rapide en cas de fuite, dégât des eaux ou panne
          critique, à toute heure du jour et de la nuit.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Installation</span>
        <h3>Installation des équipements sanitaires</h3>
        <div class="service-image">
          Image 3D ici : WC, lavabo, robinetterie modernes.
        </div>
        <p>
          Pose professionnelle de toilettes, lavabos, éviers, douches et
          robinetterie avec finitions soignées.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Qualité de l'eau</span>
        <h3>Installation de filtres à eau</h3>
        <div class="service-image">
          Image 3D ici : Système de filtration d'eau.
        </div>
        <p>
          Amélioration de la qualité de votre eau grâce à des systèmes de
          filtration adaptés à vos besoins.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Pompes</span>
        <h3>Installation de pompes à eau</h3>
        <div class="service-image">
          Image 3D ici : Pompe à eau installée dans un local technique.
        </div>
        <p>
          Installation et configuration de pompes pour garantir un débit
          d'eau stable dans tout le bâtiment.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Diagnostic</span>
        <h3>Détection de fuites</h3>
        <div class="service-image">
          Image 3D ici : Plombier avec appareil de détection de fuites.
        </div>
        <p>
          Localisation précise des fuites visibles et invisibles grâce à des
          outils de détection modernes.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Entretien</span>
        <h3>Entretien général</h3>
        <div class="service-image">
          Image 3D ici : Plombier effectuant un contrôle complet.
        </div>
        <p>
          Contrôles réguliers et maintenance préventive pour éviter les
          pannes et prolonger la durée de vie de vos installations.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Nettoyage</span>
        <h3>Nettoyage des canalisations</h3>
        <div class="service-image">
          Image 3D ici : Dégorgement / nettoyage de canalisations.
        </div>
        <p>
          Débouchage et nettoyage en profondeur des canalisations pour
          éliminer bouchons, mauvaises odeurs et reflux.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Remplacement</span>
        <h3>Remplacement de tuyauterie</h3>
        <div class="service-image">
          Image 3D ici : Anciennes tuyauteries remplacées par de nouvelles.
        </div>
        <p>
          Remplacement des anciennes canalisations endommagées par des
          installations modernes, sûres et durables.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Chauffe-eau</span>
        <h3>Installation de chauffe-eau</h3>
        <div class="service-image">
          Image 3D ici : Chauffe-eau mural installé par un plombier.
        </div>
        <p>
          Pose et raccordement de chauffe-eau électriques ou à gaz, réglages
          et mise en service.
        </p>
      </div>

      <div class="service-carte">
        <span class="badge">Réparation</span>
        <h3>Réparation de fuites</h3>
        <div class="service-image">
          Image 3D ici : Plombier réparant une fuite sur un tuyau.
        </div>
        <p>
          Intervention rapide pour colmater les fuites d'eau et limiter les
          dégâts dans votre logement ou local.
        </p>
      </div>
    </div>
  </section>

  <!-- À PROPOS -->
  <section id="apropos">
    <div class="titre-section">
      <h2>À propos de SOS PLOMBIER</h2>
      <p>Une équipe de professionnels à votre service.</p>
    </div>

    <div class="apropos">
      <div>
        <h3>Votre plombier de confiance</h3>
        <p>
          SOS PLOMBIER met à votre disposition une expertise complète en
          plomberie, pour les particuliers comme pour les professionnels.
        </p>
        <ul>
          <li>Interventions rapides et soignées</li>
          <li>Disponibilité 24h/24 et 7j/7</li>
          <li>Matériel professionnel et solutions durables</li>
          <li>Devis clair et transparent</li>
        </ul>
      </div>
      <div>
        <h3>Pourquoi nous choisir ?</h3>
        <p>
          Nous combinons réactivité, qualité de service et conseils
          personnalisés pour chaque situation.
        </p>
      </div>
    </div>
  </section>

  <!-- CONTACT -->
  <section id="contact">
    <div class="titre-section">
      <h2>Contact & demande d'intervention</h2>
      <p>Expliquez votre problème, nous vous rappelons rapidement.</p>
    </div>

    <div class="contact-grille">
      <div class="contact-info">
        <h3>Coordonnées</h3>
        <p><strong>Téléphone :</strong> 0467 64 63 21</p>
        <p><strong>Email :</strong> <a href="mailto:ssosplombier@gmail.com">ssosplombier@gmail.com</a></p>
        <p><strong>WhatsApp :</strong>
          <a href="https://wa.me/32467646321" target="_blank" style="color:#007bff; font-weight:bold;">
            Cliquez ici pour discuter sur WhatsApp
          </a>
        </p>
        <p><strong>Zone d'intervention :</strong> Bruxelles et environs</p>
      </div>

      <div class="contact-formulaire">
        <h3>Formulaire de contact</h3>
        <form>
          <label for="nom">Nom complet</label>
          <input type="text" id="nom" name="nom" placeholder="Votre nom" />

          <label for="tel">Téléphone</label>
          <input type="tel" id="tel" name="tel" placeholder="Votre numéro" />

          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Votre email" />

          <label for="message">Décrivez votre problème</label>
          <textarea id="message" name="message" placeholder="Ex : fuite sous l'évier, pas d'eau chaude..."></textarea>

          <button type="submit" class="btn-primaire">Envoyer la demande</button>

          <a href="https://wa.me/32467646321" target="_blank"
             style="display:inline-block; margin-top:15px; background:#25D366; color:white; padding:12px 20px;
                    border-radius:8px; font-weight:bold;">
            Contacter via WhatsApp
          </a>
        </form>
      </div>
    </div>
  </section>

  <footer>
    © <span id="annee"></span> SOS PLOMBIER – Tous droits réservés.
  </footer>

  <script>
    document.getElementById("annee").textContent = new Date().getFullYear();
  </script>
</body>
</html> sos-plombier
