# Datu Vizualizācija un Ekstrapolēšana

Mācību materiāli datu vizualizācijai un prognozēšanai ar Python (12. klase).

## Prasības

- Python 3.10+
- pip

## Uzstādīšana

### Windows
```
cd scripts
setup.bat
```

### Linux/macOS
```
cd scripts
chmod +x *.sh
./setup.sh
```

Tiek izveidota virtuālā vide `venv/` un instalētas atkarības no `requirements.txt`.

## Palaišana

### Windows
```
cd scripts
start_jupyterlab.bat
```

### Linux/macOS
```
cd scripts
./start_jupyterlab.sh
```

JupyterLab atvērsies pārlūkā. Sākt ar `debug/00_parbaude.ipynb` lai pārbaudītu vidi.

## Projekta struktūra

```
├── data/                   Datu faili (coffee_sales)
├── debug/                  Vides pārbaudes fails
│   └── 00_parbaude.ipynb
├── tasks/                  Uzdevumu darba burtnīcas
│   ├── 01_pamata_vizualizacija.ipynb
│   ├── 02_tendencu_linijas.ipynb
│   └── 03_cietais_rieksts.ipynb
├── scripts/                Palīgskripti
│   ├── setup.bat/.sh
│   ├── start_jupyterlab.bat/.sh
│   └── cleanup.bat/.sh
├── my_graphs/              Saglabāto grafiku mape
├── requirements.txt        Python atkarības
└── venv/                   Virtuālā vide (ģenerēta)
```

## Atkarības

- pandas
- numpy
- matplotlib
- scikit-learn
- jupyterlab

Pilns saraksts: `requirements.txt`

## Tīrīšana

Lai noņemtu virtuālo vidi un pagaidu failus:

### Windows
```
cd scripts
cleanup.bat
```

### Linux/macOS
```
cd scripts
./cleanup.sh
```

