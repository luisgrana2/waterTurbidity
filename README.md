# Turbidity Measurement Using Fourier Transform and Gaussian Filtering

<div align="center">
  <img src="https://github.com/user-attachments/assets/f01fd60d-fc06-4822-b02b-fbad71241f69" width="50%" height="50%">
</div>

## Table of Contents

- [Overview](#overview)
- [Process Overview](#process-overview)
- [Instructions](#instructions)
   - [Set Up](#setup)
   - [Image Pattern Creation](#image-pattern-creation)
   - [Turbidity Simulation](#turbidity-simulation)
   - [Fourier Transform and Frequency Analysis](#fourier-transform-and-frequency-analysis)
   - [Turbidity Experiment](#turbidity-experiment)
   - [Results Visualization](#results-visualization)
   - [Conslusions](#conclusions)
- [Notes](#notes)
- [Contributing](#contributing)

## Overview

This repository contains MATLAB scripts and instructions for simulating and measuring turbidity in images using Fourier Transform and Gaussian filtering techniques. The process involves creating image patterns, applying Gaussian filters to simulate turbidity, and analyzing the effect of turbidity on the frequency domain of the images.

## Process Overview

The process is divided into three main parts:

1. **Simulation of Patterns and Turbidity**:
   - **Pattern Creation**: Create calibration patterns using chessboard images and bar patterns with varying frequencies. MATLAB is used for this purpose, with four frequencies used for both chessboard and bar images.
   - **Turbidity Simulation**: Apply a Gaussian filter to the images to simulate turbidity. The Gaussian filter smooths or blurs the image by applying a weighted average to each pixel, with increasing standard deviation values used to adjust the level of turbidity.

2. **Turbidity Measurement Using Fourier Transform**:
   - **Fourier Transform**: Convert the image into the frequency domain using the Fourier Transform. This results in a cross-shaped image for chessboards and a straight line for bar patterns, with peaks representing the frequencies of the image.
   - **Band-pass Filter**: Apply a band-pass filter to isolate the main frequencies by removing high frequencies and the average value at the center. This filter is manually created by combining a high-pass filter and a low-pass filter.
   - **Frequency Analysis**: Calculate the power of the frequencies in the image using the absolute value squared of the Fourier Transform. The results are plotted with turbidity levels marked as power and water quality assessed by the standard deviation applied to the image.

3. **Experimental Project**:
   - **Setup and Calibration**: Set up the experimental system, including the water tank, camera, and light source. Calibrate the system to ensure accurate measurements of turbidity using real-world data.

## Instructions

### Setup

**Software**
- **MATLAB Installation**: Ensure you have MATLAB installed on your system.

**Hardware**
- **Required Equipment**: The setup requires a water tank, a camera, and an appropriate light source. The light source is crucial as undesired shadows or reflections can impact the analysis.
- **Optimal Conditions**: Place the setup in a covered area to avoid shadows from surrounding objects. Conduct measurements during a time when sunlight is minimal, ideally between 12:00 and 14:00. Position the camera to cover the entire pattern.

### Image Pattern Creation

- **Chessboard and Bars**: Use MATLAB to generate chessboard and bar patterns with varying frequencies. The MATLAB scripts for creating these patterns are included in this repository.

<div align="center">
  <img src="https://github.com/user-attachments/assets/adfd520d-9242-4f5c-8a3e-215ff0f11b4a" width="50%" height="50%">
   
   *Figure 1: Example of a chessboard pattern used for calibration.*
</div>


### Turbidity Simulation

- **Gaussian Filtering**: Use MATLAB to apply a Gaussian filter to the images. Adjust the standard deviation to simulate different levels of turbidity.

### Fourier Transform and Frequency Analysis

- **Fourier Transform**: Perform the Fourier Transform on the simulated images to move them into the frequency domain.
- **Band-pass Filtering**: Manually create and apply a band-pass filter to remove undesired frequencies.
- **Power Calculation**: Compute the power of the frequencies by taking the absolute value squared of the Fourier Transform. The less frequency present, the higher the turbidity, as it blurs the pattern shown.

### Turbidity Experiment

<div align="center">
  <img src="https://github.com/user-attachments/assets/b1168d7a-078a-4d43-94cd-440483a6b68a" width="25%" height="25%">
   
   *Figure 2: Experimental System*
</div

- **Water Tank Preparation**: Use a completely transparent glass tank to avoid quality degradation. The pattern should be printed on an A3 sheet to maximize camera resolution and to allow for rotations within the tank. The turbidity is measured with 16-frequncy bars under the water tank, the pattern which provides better results in the simulation.
- **Camera Initialization**: Set up the camera using MATLAB, ensuring it is configured to the maximum resolution (e.g., 1920x1080 for a Logitech Stream Cam).
- **Image Processing**: Capture images in real-time and process them by converting to grayscale and cropping to focus on the pattern.
- **Interface Development**: Develop a user interface to allow real-time visualization and analysis of turbidity levels. This interface displays turbidity as a percentage and includes a status indicator for camera operation.
- **Turbidity Measurement**: Incrementally add cocoa powder (one spoon at a time) while the MATLAB program runs to record the turbidity levels. Continue adding cocoa powder until nine spoons have been added. Document the power values corresponding to each addition to track turbidity changes over time. 

<div align="center">
  <img src="https://github.com/user-attachments/assets/8a5bc5c8-8078-479f-83cf-f528f7980eed" width="25%" height="25%">
   
   *Figure 3: Adding cocoa powder to the water tank to measure turbidity.*
</div>

### Results Visualization

- **Plotting Results**: Plot the results of the power of frequencies versus turbidity levels. Compare the results simulated by the Gaussian filter with the actual turbidity measured using cocoa powder.

<div align="center">
<img src="https://github.com/user-attachments/assets/3e69a43b-3424-4079-a999-b640496ba966" height="40%" width="40%"/>

*Figure 4: Plot of quality versus turbidity levels in simulation and experiment.*
</div>
  
### Conclusions

The project successfully demonstrated that turbidity in a water tank can be measured using a low-cost camera setup. The theoretical calculations and simulations were validated by practical results, showing that the method works effectively for basic quality control.

## Notes

- **Unit Considerations**: The power and standard deviation values do not have explicit units, which may affect result interpretation. The analysis provides relative measurements of turbidity rather than absolute units.

## Contributing

I welcome contributions to improve this project! Please fork the repository and submit pull requests with your enhancements or bug fixes. For major changes, please open an issue to discuss what you would like to change.

## Contact

For any questions or inquiries, please contact:

- **Luis Granados** - [lgsgranados@gmail.com](mailto:lgsgranados@gmail.com)
- **GitHub Profile** - [luisgrana2](https://github.com/luisgrana2)
- **LinkedIn Profile** - [Luis Granados](https://www.linkedin.com/in/luis-granados-segura-099290222/)
