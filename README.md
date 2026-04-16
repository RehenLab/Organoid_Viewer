# Organoid Viewer

This repository contains the code and assets used to visualize organoid images in the browser and to support expert-based quality classification during the study.

The project was deployed as a GitHub Pages viewer and includes both a standalone visualization interface and the Jotform-integrated widget used during expert evaluation. The interface allows users to inspect organoid images across focal planes and classify each organoid as acceptable, not acceptable, or image did not load.

## Overview

This repository supports the visualization and expert review of organoid images. It includes a browser-based viewer for exploring image tiles generated from microscopy data, as well as the survey widget used to collect expert classifications during the study.

The repository is best understood as a research-support and reproducibility resource rather than a general-purpose software package.

## Purpose

The repository was used for two related purposes. First, it provides an interactive interface for viewing organoid images in the browser. Second, it contains the version of the interface used to collect expert assessments of organoid image quality.

## Repository contents

### `index.html`

Standalone browser interface for visualizing organoids and simulating the interface shown to experts during classification.

### `Widget_Final.html`

Jotform-integrated version of the viewer used during expert classification. In addition to the visualization logic, it includes the JavaScript required to submit the expert selection to Jotform for later compilation and analysis.

### `Survey_DeepZoom.ijm`

Fiji/ImageJ macro used to convert source images into Deep Zoom tiles compatible with OpenSeadragon.

### `20250401_Organoid_Names_Final.csv`

Lookup table linking the anonymized names shown to experts such as `Organoid_1`, `Organoid_2`, and so on to the corresponding organoid identifiers and metadata, including batch, day and well.

### `images/`

Folder containing the Deep Zoom image tiles and related structure consumed by OpenSeadragon. This directory also includes some viewer assets and icons.

### `openseadragon/`

Bundled OpenSeadragon source files and supporting packages used by the viewer.

## How the workflow works

Organoid images were first converted into Deep Zoom tile pyramids using Fiji/ImageJ. These tiled image sets were then served in a lightweight HTML and JavaScript viewer built with OpenSeadragon, enabling efficient zooming and navigation in the browser.

For the expert classification workflow, a Jotform-embedded version of the interface was used. Experts inspected each organoid and selected one of the available classification outcomes. Those responses were then submitted through Jotform and later compiled for downstream analysis.

## Live deployment

This repository is also deployed as a GitHub Pages site for browser-based access to the viewer.

## Intended use

This repository accompanies a manuscript submission and is intended primarily as a reproducibility, visualization, and methods-support resource. It contains the interface and preprocessing components used for expert inspection of organoid images rather than a packaged software distribution intended for broad reuse.

## Notes for reuse

Anyone wishing to adapt this repository should be aware that the standalone viewer and the Jotform-integrated widget serve different purposes. The standalone version is appropriate for local inspection and demonstration, whereas the widget contains survey-specific logic tied to the original expert classification workflow.
