# Exemplar Notebooks
<!-- TOC -->

- [Exemplar Notebooks](#exemplar-notebooks)
    - [GeoExemplars](#geoexemplars)
    - [Haskell](#haskell)
    - [Machine Learning Notebooks](#machine-learning-notebooks)
    - [Statistics with R Notebooks](#statistics-with-r-notebooks)
    - [TeachingDocs/Templates/nbgraderExamples](#teachingdocstemplatesnbgraderexamples)

<!-- /TOC -->

A collection of notebook exemplars using different libraries pre-installed in Noteable, which can be used as templates or inspiration for your own pieces of code.

## GeoExemplars
The following exemplars need to be run in the Geopspatial Notebook Server as some of the libraries used are only pre-installed there.

* **Covid-19 Notebook**
    * Focus on data processing
    * Step-by-step guide for creating choropleth maps using Covid-19 data with folium
    * Utilizes ipywidgets to make the tutorial interactive
* **EarthPy Notebook**
    * Focus on geosciences
    * Explores EarthPy to visualize OS terrain 50 DTM data of the Lake District obtained from DigiMap
    * Plotting terrain maps with hillshade to make it seem 3-dimensional
* **Folium Notebook**
    * Focus on geosciences
    * Adding markers to basemaps
* **Kepler Notebook**
    * Focus on geosciences
    * Using the KeplerGl interface embedded in a Jupyter Notebook
    * Creating map layers of global population and GDP
* **Obspy Notebook**
    * Focus on seismology
    * Explores the ObsPy framework for seismic data
    * Utilizes ipywidgets to make the tutorial interactive
* **Rasterio/Matplotlib Notebook**
    * Focus on geosciences
    * Explores rasterio and matplotlib to visualize OS terrain 50 DTM data of the Lake District obtained from DigiMap
    * Plotting terrain and contourmaps of the Lake District
* **Ridgemap Notebook**
    * Focus on geosciences
    * Explores ridge_map, a geospatial library accessing SRTM elevation data
    * Plotting elevation data as ridge maps

## Haskell

* **Tutorial1.ipynb**
    * A few basic Haskell functionsGener    

## Machine Learning Notebooks

The following exemplars can run in the Standard Notebook Server.

* **Classification-k-NN Notebook**
    * Focus on standard classification method
    * Uses base scipy stack libraries to visualize classification-K nearest neighbours (k-NN) and principal component analysis (PCA)
* **Clustering-k-means Notebook**
    * Uses base scipy stack libraries to visualize Clustering K-means visualizations of generated data
    * Utilizes bokeh to make the plots interactive
* **K-means Compression Notebook**
    * Focus on K-means compression of image data
    * Tutorial format of using base scipy stack libraries to create image filters
    * Utilizes ipywidgets to make the tutorial interactive
* **Regression Medical Notebook**
    * Focus on exploratory data analysis and linear regression
    * Uses base scipy stack libraries to perform linear regression on sample diabetes data
    * Utilizes bokeh to make the plots interactive

## Statistics with R Notebooks
The following exemplars need to be run in the R with Stan Notebook Server as they are written in R.

* **Data Cleaning Notebook**
    * Focus on Data cleaning and Exploratory Data Analysis (EDA) using R
    * Demonstrates a typical data cleaning process using data on breast cancer

## TeachingDocs/Templates/nbgraderExamples

These three provide a template for an assignment:

* `nbgraderAssignmentSkeleton.ipynb`
* `nbgraderExample-teacher.ipynb` - this is the teachers version
* `nbgraderExample-student.ipynb` - this is what the student would recieve

These are some example notebooks the Noteable team use when testing nbgrader:

* `Haskell test assignment.ipynb` - A test source assignment for the Haskell language
* `julia_demo_assignment.ipynb` - A test source assignment for the Julia language
* `python_squares_assessment.ipynb` - A test source assignment for the Python language
* `R squares demo assessment.ipynb` - A test source assignment for the R language
