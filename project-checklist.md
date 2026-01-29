# ✅ Project Startup Checklist (Foundation Kit 2026)

Gunakan checklist ini setiap kali anda memulakan projek baru untuk memastikan standard "Solid 2050" dipatuhi.

## 🏗️ Phase 1: Environment Setup
- [ ] **Clone/Copy Foundation**: Salin struktur folder utama (`01` hingga `04`).
- [ ] **HTML Boilerplate**: Gunakan `master-structure.html` sebagai fail `index.html` anda.
- [ ] **Link Assets**: Pastikan fail `master-styles.css` dan `master-logic.js` dipautkan dengan betul dalam tag `<head>`.
- [ ] **Verify Core**: Buka konsol pelayar (F12) dan pastikan mesej "Foundation Kit: System Initialized" dipaparkan.

## 🎨 Phase 2: Design & UI
- [ ] **Color Variables**: Tentukan warna tema projek menggunakan variable CSS di dalam `:root`.
- [ ] **Typography**: Pastikan fon standard projek ditetapkan dalam `body`.
- [ ] **Responsive Test**: Semak paparan pada peranti mudah alih (rujuk `02-Mobile-Environments`).

## ⚙️ Phase 3: Logic & Data
- [ ] **Schema Validation**: Pastikan data pengguna anda mengikut format `standard-user.json`.
- [ ] **Offline Persistence**: Implementasi fungsi `FoundationKit.storage.save()` untuk data kritikal.
- [ ] **API Standard**: Jika menggunakan backend, pastikan respon server mengikut `api-response-schema.json`.
- [ ] **Error Handling**: Uji fungsi dengan mod "Offline" untuk memastikan sistem tidak crash.

## 🚀 Phase 4: Deployment & Documentation
- [ ] **Manifest Check**: (Jika Mobile) Pastikan keizinan dalam `AndroidManifest.xml` telah ditetapkan.
- [ ] **Automation Test**: Jalankan `linux-basic-setup.sh` jika dideploy pada server Linux.
- [ ] **Update README**: Tulis deskripsi spesifik projek pada fail README.
- [ ] **Version Control**: Lakukan commit pertama dengan mesej `feat: initial project setup from Foundation Kit`.

---
*Success is built on a solid foundation.*
