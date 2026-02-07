# Low Voltage Asymmetric Uni-Directional NIPIN Diode for System Level ESD Protection

## Project Overview

This repository provides the design and simulation assets for an asymmetric NIPIN (n⁺–i–p⁺–i–n⁺) diode optimized for ultra-low-voltage, low-capacitance system-level ESD protection.  
The device uses a triangular energy barrier to enable **sub-bandgap impact ionization**, yielding breakdown voltages well below 1V.  
By engineering one intrinsic region longer than the other, the diode achieves a **uni-directional** breakdown: it triggers at low voltage in the forward direction while remaining non-conductive in reverse.  

TCAD simulations confirm that the optimized asymmetric NIPIN (e.g. Li₁=20 nm, Li₂=50 nm) achieves a breakdown of ~0.66 V and junction capacitance ~1.49 pF/mm².  
This corresponds to ~25% lower capacitance than a symmetric NIPIN design, making it highly suitable for protecting high-speed, low-voltage I/O interfaces without degrading signal integrity.

## Key Technical Highlights

- **Ultra-low breakdown voltage:** The triangular-barrier NIPIN design achieves sub-bandgap breakdown (~0.66–0.7 V) through impact ionization.  
  This enables ESD protection at operating voltages well below 1 V, a regime beyond conventional zener or punch-through diodes.  

- **Low capacitance:** The asymmetric geometry drastically reduces junction capacitance.  
  For Li₁=20 nm and Li₂=50 nm, the capacitance is ~1.49 pF/mm² – about 25% lower than a symmetric NIPIN.  
  This reduction helps preserve signal bandwidth for high-speed interfaces.  

- **Designable asymmetry:** By varying intrinsic region lengths and p⁺-doping, the device’s breakdown threshold and capacitance can be tuned.  
  For example, increasing Li₂ raises breakdown and lowers capacitance, as verified by TCAD.  

- **Uni-directional protection:** The asymmetric diode conducts sharply in one polarity.  
  In simulations (Li₂=50 nm), positive-bias breakdown occurs at ~0.6 V, while negative-bias breakdown is ~1.0 V.  
  This ensures fast clamping in one direction with negligible leakage in the opposite direction.  

- **TCAD-verified performance:** The repository includes transmission-line-pulse (TLP) simulation models and results.  
  For the optimized design (Li₁=20 nm, Li₂=50 nm), TCAD predicts a peak clamp current of ~2.2 mA/μm at breakdown.  
  These IV and band-diagram data validate the diode’s low-voltage ESD behavior.  

## Repository Structure

- **`Presentations`** – Project statuts presentations providing information regarding ESD and NIPIN Diode. Poster submitted during research showcase.
- **`Research Manuscripts`** – Research Manuscripts submitted to SISPAD 2025 and ICEE 2025.  
- **`Simulation Data`** – Output data from TCAD runs (I–V curves, C–V curves, band diagrams, etc.) for various device configurations (e.g. Li₁=20 nm, Li₂=50 nm).  
- **`Plots`** – Plots used in the research manuscripts (I–V curves, C–V curves, band diagrams, etc.) with MATLAB codes.
- **`References`** – Reference material used during the duration of the project.  

## Contact

Contributor: **Krish Patel & Kshitij Agarwal**   
📧 krish.patel@iitgn.ac.in
