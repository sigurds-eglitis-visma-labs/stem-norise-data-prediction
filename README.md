# Datu Vizualizācija un Ekstrapolēšana
## Darba vide skolēniem (12. klase)

> **🚀 Ātri sākt?** Skatīt [`QUICK_START.md`](QUICK_START.md) - īsākā instrukcija!

### Kā sākt?

**Windows:**
1. **Palaid `setup.bat`** - tas instalēs visu nepieciešamo (~2-3 min)
2. **Palaid `start_jupyterlab.bat`** - tas atvērs JupyterLab pārlūkā
3. **Sāc ar `debug\00_parbaude.ipynb`** - pārbaudi, vai viss darbojas (2-3 min)

**Linux/macOS:**
1. **Palaid `./setup.sh`** - tas instalēs visu nepieciešamo (~2-3 min)
2. **Palaid `./start_jupyterlab.sh`** - tas atvērs JupyterLab pārlūkā
3. **Sāc ar `debug/00_parbaude.ipynb`** - pārbaudi, vai viss darbojas (2-3 min)

**Kas tiek instalēts:**
   - Python virtuālā vide (venv)
   - JupyterLab, Pandas, Matplotlib, NumPy, Scikit-learn

### Uzdevumu faili

Ir 4 uzdevumu faili ar pieaugošu grūtību:

| Fails | Grūtība | Laiks | Uzdevumi | Apraksts |
|-------|---------|-------|----------|----------|
| `debug\00_parbaude.ipynb` | ✅ Pārbaude | ~3 min | 5 | Sistēmas pārbaude |
| `tasks\01_pamata_vizualizacija.ipynb` | ⭐ Viegla | ~20 min | 4 | Datu ielāde, bar/line/pie grafiki |
| `tasks\02_tendencu_linijas.ipynb` | ⭐⭐ Vidēja | ~25 min | 4 | Lineārā regresija, prognozes |
| `tasks\03_cietais_rieksts.ipynb` | ⭐⭐⭐ Grūta | ~15+ min | 3+bonus | Slīdošie vidējie, polinomi |

**Mērķis:** Pabeidz vismaz 1. daļu un sāc 2. daļu!

### Kā strādāt ar JupyterLab

- Katrā šūnā nospied **Shift+Enter** lai palaistu kodu
- Ja kaut kas nestrādā, izmanto **Kernel → Restart** izvēlni
- Risinājumi ir paslēpti zem "🔍 Klikšķini šeit" - mēģini vispirms pats!
- Izmanto dokumentācijas saites, kas atrodas katrā uzdevumā

### Pēc nodarbības

**Windows:** Palaid `cleanup.bat`  
**Linux/macOS:** Palaid `./cleanup.sh`

Skripts notīra instalētos failus:
- Prasīs apstiprinājumu pirms dzēšanas
- Dzēš tikai projekta failus (venv, .png, cache)
- Neietekmē citus Python projektus

---

## 📚 Noderīgas saites

### Dokumentācija
- [Pandas - 10 minūšu ievads](https://pandas.pydata.org/docs/user_guide/10min.html)
- [Pandas Cheat Sheet (PDF)](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
- [Matplotlib grafiku galerija](https://matplotlib.org/stable/gallery/index.html)
- [Matplotlib Cheat Sheets](https://matplotlib.org/cheatsheets/)
- [Scikit-learn lietotāja ceļvedis](https://scikit-learn.org/stable/user_guide.html)

### Mācību materiāli
- [Kaggle - bezmaksas datu zinātnes kursi](https://www.kaggle.com/learn)
- [Real Python - Python pamācības](https://realpython.com/)
- [Python dokumentācija](https://docs.python.org/3/tutorial/)

### Datu avoti
- [Data.gov.lv - Latvijas atvērtie dati](https://data.gov.lv/)
- [Kaggle Datasets](https://www.kaggle.com/datasets)
- [Our World in Data](https://ourworldindata.org/)

### Papildus bibliotēkas (pašmācībai)
- [Seaborn - skaistāki statistikas grafiki](https://seaborn.pydata.org/)
- [Plotly - interaktīvi grafiki](https://plotly.com/python/)

---

## 🔄 Vēlies Izmantot Savus Datus? / Want to Use Your Own Data?

**Pēc galveno uzdevumu pabeigšanas** (01, 02, 03), vari izmantot savu CSV failu!

**After completing main lessons**, you can use your own CSV data!

### Prasības / Requirements:
- ✅ CSV fails ar datumu kolonnu (YYYY-MM-DD formāts)
- ✅ Vismaz viena skaitliska kolonna (cenas, daudzumi, utt.)
- ✅ Vismaz viena kategoriju kolonna (nosaukumi, tipi, utt.)

### Kā izmantot / How to use:
1. Pabeidz vispirms 01, 02, 03 uzdevumus
2. Atver `tasks\01_pamata_vizualizacija_CUSTOM.ipynb`
3. Mainīt konfigurāciju (Step 2) ar savu faila ceļu un kolonnu nosaukumiem
4. Palaist visas šūnas secīgi

### Piemēri CSV struktūrām / Example CSV formats:
```csv
date,product,price,category
2024-01-01,Widget,10.5,Electronics

date,subject,grade,teacher
2024-01-15,Math,8.5,Smith

date,temperature,humidity,city
2024-01-01,15.5,80,Riga
```

📖 Detalizēta analīze: `DATASET_FLEXIBILITY.md`

---

## 📁 Projekta Struktūra / Project Structure

```
stem-norise-data-prediction/
├── tasks/                  # Galvenie uzdevumi / Main tasks
│   ├── 01_pamata_vizualizacija.ipynb
│   ├── 02_tendencu_linijas.ipynb
│   ├── 03_cietais_rieksts.ipynb
│   └── 01_pamata_vizualizacija_CUSTOM.ipynb
├── debug/                  # Pārbaudes fails / Debug file
│   └── 00_parbaude.ipynb
├── scripts/                # Skripti / Scripts
│   ├── setup.bat          # Windows instalācija
│   ├── setup.sh           # Linux/macOS instalācija
│   ├── start_jupyterlab.bat
│   ├── start_jupyterlab.sh
│   ├── cleanup.bat
│   └── cleanup.sh
├── data/                   # Datu faili / Data files
├── my_graphs/              # Saglabātie grafiki / Saved graphs
├── venv/                   # Virtuālā vide / Virtual environment
├── setup.bat              # Windows wrapper
├── setup.sh               # Linux/macOS wrapper
├── start_jupyterlab.bat   # Windows wrapper
├── start_jupyterlab.sh    # Linux/macOS wrapper
├── cleanup.bat            # Windows wrapper
├── cleanup.sh             # Linux/macOS wrapper
└── GRAPH_SAVING_SNIPPET.md  # Kā saglabāt grafikus / How to save graphs
```

## 📸 Grafiku Saglabāšana / Saving Graphs

Katrs uzdevuma fails tagad ietver instrukcijas, kā saglabāt izveidotos grafikus!
Each task file now includes instructions on how to save created graphs!

- Grafiki tiek saglabāti mapē `my_graphs/`
- Katram grafikam ir laika zīmogs (timestamp)
- Pilna dokumentācija: `GRAPH_SAVING_SNIPPET.md`

---

## 🆘 Palīdzība

### Ja kaut kas nedarbojas
1. Skatīt `ERRORS_GUIDE.md` - biežākās kļūdas un risinājumi
2. Pārbaudi, vai esi pareizajā mapē
3. Mēģini palaist cleanup un pēc tam setup vēlreiz:
   - **Windows:** `cleanup.bat` → `setup.bat`
   - **Linux/macOS:** `./cleanup.sh` → `./setup.sh`
4. **Linux/macOS:** Pārliecinies, ka skripti ir izpildāmi: `chmod +x *.sh scripts/*.sh`

### Drošība
- `SCRIPT_SAFETY.md` - detalizēta skriptu drošības analīze
- Skripti ir droši sistēmām ar citiem Python projektiem
- Visi faili ir lokāli (venv, cache) - neskar sistēmas Python

---

## 🎓 Vadītājam

Skatīt `PREZENTACIJA.md` - prezentācijas saturs strukturēts pēc Ganjē 9 mācību notikumiem.

### Papildus dokumenti
- `ANALYSIS_SUMMARY.md` - uzdevumu un materiālu analīze
- `IMPROVEMENTS.md` - detalizēti uzlabojumu ieteikumi
- `ERRORS_GUIDE.md` - kļūdu rokasgrāmata (izdrukājama)

