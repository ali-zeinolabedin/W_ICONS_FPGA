## Here are the design logs for W-ICONS 64Ch ASIC
Top level flow chart

![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/4a720288-d7ed-4d87-9a2f-74f35efcd1e9)


## Biasing design
Simulation voltage: 1.5V, Cbg = 10nF, Cbn1 = 100nF, Cbn2 = 100nF, Cbp1 = 100nF, Cbp2 = 100nF.

### Transient simulation results
Vbg = 1.12V Vbn1 = 0.42V Vbn2 = 0.519V Vbp1 = 1.047V Vbp2 = 0.914V. I = 7.24uA

No start up issue.
![image](https://user-images.githubusercontent.com/60518072/217899041-6edca7d3-9a79-4426-9ed6-7f6f3207a625.png)

## Sub-bandgap voltage reference design
A 227.38 mV reference voltage is design to enable 0.75V on chip voltage reference to bias amplifier and ADC.
The temperature coefficient is less than 0.0131mV/°C or 57.8ppm/°C. 
![image](https://user-images.githubusercontent.com/60518072/234461217-20d98351-9748-4dd7-a58d-9114191c7a2c.png)

## Amplifier design (0-1.5V)
Two-stage with first stage gain of 24V/V and second stage gain of 3.4V/V. The second stage gain can be adjusted using Vgain IO to low gain setting.
The overall amplifier gain is 81V/V (high gain) and 24V/V (low gain). One discharge IO controlled by internal controller.

### Summary

| Symbol | Parameter ||
| :---         |     ---: | ---: |
| Vdd   | Supply Voltage    | **1.5 V** |
| Ad     | Differenntial Gain   |    **81/24 V/V**      |
| Pd| Power   |**143 uW**   |
| Vni| Input-Referred Noise|**2.4 uVrms(250-7.5KHz)**   |
| Vin-AC     | Input range       | **±8.1 mV / ±22 mV**     | 
| Sa| Size per channel      |   <**650umx350um**(`0.23mm^2`)  | 
| fL     | Low-Freq 3-dB Cutoff       |   **1Hz**, tunable (1Hz to 5.2KHz)         |
| fH     | High-Freq 3-dB Cutoff       | **10kHz**       | 
|FOM     | Noise x power / sampling       |  **11.4**        | 


### Schematic
12 IOs, Cell name:Amp1V5_LN

![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/584161a7-e80e-4865-bef8-7f3e477a118c)

![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/090d8535-3b57-4271-a55d-a1175d0d96b2)



### Amplifier simulation results

Re-designed feedback  pseudo resistor with fixed Vgs implementations. 
Using high voltage FOM capacitor for low voltage mosfet protection, Cin = 9.4pF

![image](https://user-images.githubusercontent.com/60518072/222823339-215cc17b-fa6b-4c2e-881a-d4e5009ead5b.png)

High gain setting (Vgain = 0V), Vgate = 0.1V, Vgate2 = 1.5V, Vin = ±3mV/±8.1mV, 1kHz sinewave, discharge = 0V.
Noise = 2.4uV, I = 95.5uA per channel. Gain = 80.5V/V, Bandwidth = 0.9Hz to 9.4kHz


±3mV input, gain = 80.5V/V

![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/5ef0300c-0f34-4bbe-917f-4ae196ff523a)

±8.1mV input, gain = 80.5V/V

![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/79d0d108-7fdd-424a-b2e5-a1d83f1ed31a)

Bandwidth

![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/e8a28007-9f25-4c96-a409-01c5d86184a7)


Low gain setting (Vgain = 1.5V), Vgate = 0.1V, Vgate2 = 1.5V, Vin = ±22mV, 1kHz sinewave, discharge = 0V. Gain = 24.4V/V
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/f8513008-9fa7-4a43-9b72-1a445ceaff5a)


Bandwidth is turnable from 1Hz to 5.2KHz with Vgate from 0.1V to 1.15V and Vgate2 from 0.3V to 1.45V,
![image](https://user-images.githubusercontent.com/60518072/233731491-c0c4aabb-ecbb-4965-a331-e2f61fd916a6.png)

100 points noise monte carlo with mean vaule = 2.41uVrms and maximum of 2.62uVrms 
![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/2fb64009-2aae-47dd-bcc2-fc99a9b5f575)

Bandwidth corners, 0.8Hz to 1.1Hz
![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/e56fab18-fae9-4517-99f1-fe5dcaeee80c)


## Impedance measurement Design


The metrology for electrode impedance measurement involves applying an internal stimulation voltage to the electrodes and measuring the resulting output voltage in order to calculate impedance. This stimulation voltage is divided by 11 and then transmitted to a voltage buffer. Due to an asymmetrical power supply, the voltage buffer filters out the negative voltage, allowing only the positive pulses to be considered valid.

Impedance measurement range: 1k to over 1M ohm

Current:2.5uA

Simulation pulse: +/- 10V with 1mS pulse width, output = 0.909V.
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/bcc9a235-bc57-4e26-b96a-aa39297739a5)

Simulation pulse: +/- 15V with 1mS pulse width, output = 1.37V.
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/77bc9452-8670-4c0c-9e2c-3d8605355875)

## Amplifier size

The overall layout size is expected smaller than 0.65mm by 0.35mm
![image](https://github.com/BlackrockNeurotech/ASIC-W-ICONS/assets/60518072/3bc9d676-0567-44e6-8785-fa99986e4e19)


## Stimulation Design

Maximum stimulation current:400uA

 **Stimulation OTA design**

OTAn amplifier, simulation voltage: 1.5V, Gain= 40.1dB PM = 57
![image](https://user-images.githubusercontent.com/60518072/218939961-7ae7702a-86b1-4582-b504-ae130d3deb42.png)

OTAp amplifier, simulation voltage: 1.5V, Gain= 40.5dB PM = 47
![image](https://user-images.githubusercontent.com/60518072/218940547-7f9b5df8-6c60-4a7f-9702-313d47c64521.png)

 **Overall simulations**

Simulation voltage: 1.5V, 10k load with 200uS pulse width
As shown below, the maximum current is 400uA. 
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/f6837ef9-b5b3-4c0f-b4bd-5c868fb31b64)

## SAR ADC Design

### Comparator Design
The comparator architecture consists of Preamplifier, regenerative latch and storage latch to obtain high gain. The preamplifier gain is 11.6V/V which could lower the latch offset and has lower noise.  
 
Transient response, simulation load = 50fF
Comparator regenerative time = 4.095ns/ln(1e6) = 297ps
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/e89a23b7-f712-4de8-9965-479eb62cb254)

With 100uV input voltage, the clock delay is ~4.2ns which is fast enough for SAR logic to make decision with 33MHz sampling rate.
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/a7cc73a3-c391-4a6c-8aa4-ff6cc38cc854)


Transient response on differential mode, Vin = 1nV, 1uV, 1mV
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/398117ad-6698-420e-b219-5554af2e4a43)

Transient simulation with 50MHz clock. One input is set to 0.75V, the other input is swing between 0.7 to 0.8V, it takes 2 clock cycles to output a valid data. Since we are using 16 clock cycles to sampling data, no issues here. 
Current consumption is ~66uA with 50MHz clock.
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/c116719f-ce34-45ca-b055-66442466cd96)

The comparator can affect ADC's accuracy, linearity and resolution. Plot below shows ramp up simulation on comparator offset, the simulation shows comparator offset mean voltage is ~120uV. With LSB = 22.89uV, a 120uV offset voltage could causes 5LSB error which requires off-chip calibration to reduce total error. 
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/f2b10587-d950-43e3-b728-1f1ee2f82a4f)

With offset tuning to balance the load capacitance, the offset could lower to 1/2 LSB range.
![image](https://github.com/BlackrockNeurotech/CTR-BRSR64-ASIC/assets/60518072/1507204e-6636-4d36-999e-9fdd7dbfce2b)
