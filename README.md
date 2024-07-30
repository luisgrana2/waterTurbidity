# Turbidity Measurement Using Fourier Transform and Gaussian Filtering

## Overview

This repository contains MATLAB scripts and instructions for simulating and measuring turbidity in images using Fourier Transform and Gaussian filtering techniques. The process involves creating image patterns, applying Gaussian filters to simulate turbidity, and analyzing the effect of turbidity on the frequency domain of the images.

## Process Overview

The process is divided into two main parts:

1. **Simulation of Patterns and Turbidity**:
   - **Pattern Creation**: Create calibration patterns using chessboard images and bar patterns with varying frequencies. MATLAB is used for this purpose, with four frequencies used for both chessboard and bar images.
   - **Turbidity Simulation**: Apply a Gaussian filter to the images to simulate turbidity. The Gaussian filter smooths or blurs the image by applying a weighted average to each pixel, with increasing standard deviation values used to adjust the level of turbidity.

2. **Turbidity Measurement Using Fourier Transform**:
   - **Fourier Transform**: Convert the image into the frequency domain using the Fourier Transform. This results in a cross-shaped image for chessboards and a straight line for bar patterns, with peaks representing the frequencies of the image.
   - **Band-pass Filter**: Apply a band-pass filter to isolate the main frequencies by removing high frequencies and the average value at the center. This filter is manually created by combining a high-pass filter and a low-pass filter.
   - **Frequency Analysis**: Calculate the power of the frequencies in the image using the absolute value squared of the Fourier Transform. The results are plotted with turbidity levels marked as power and water quality assessed by the standard deviation applied to the image.

## Instructions

### 1. Setup

- **MATLAB Installation**: Ensure you have MATLAB installed on your system.

### 2. Image Pattern Creation

- **Chessboard and Bars**: Use MATLAB to generate chessboard and bar patterns with varying frequencies. The MATLAB scripts for creating these patterns are included in this repository.

### 3. Turbidity Simulation

- **Gaussian Filtering**: Use MATLAB to apply a Gaussian filter to the images. Adjust the standard deviation to simulate different levels of turbidity.

### 4. Fourier Transform and Frequency Analysis

- **Fourier Transform**: Perform the Fourier Transform on the simulated images to move them into the frequency domain.
- **Band-pass Filtering**: Manually create and apply a band-pass filter to remove undesired frequencies.
- **Power Calculation**: Compute the power of the frequencies by taking the absolute value squared of the Fourier Transform results.

### 5. Results Visualization

- **Plotting Results**: Plot the results of the power of frequencies versus turbidity levels. Assess water quality by analyzing the standard deviation applied to the image.

![Captura de pantalla 2024-07-30 110030](https://github.com/user-attachments/assets/3e69a43b-3424-4079-a999-b640496ba966)
![2cullerades](https://github.com/user-attachments/assets/8a5bc5c8-8078-479f-83cf-f528f7980eed)
![Captura de pantalla 2024-07-30 110316](https://github.com/user-attachments/assets/adfd520d-9242-4f5c-8a3e-215ff0f11b4a)
