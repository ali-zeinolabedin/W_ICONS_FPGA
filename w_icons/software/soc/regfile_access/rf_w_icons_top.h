/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */

#ifndef __RF_W_ICONS_TOP_H__
#define __RF_W_ICONS_TOP_H__

#include <stdint.h>

/* icglue keep begin custom-header *//* icglue keep end */

// REGFILE->chip_status_id.REGISTER_NAME
typedef struct {
    rf_data_t chip_id : 32; // Chip ID: R(01), S(01), Version(01), Ch(64)
} __attribute__((__packed__,__aligned__(4))) w_icons_top_chip_status_id_t;

// REGFILE->chip_error_status1.REGISTER_NAME
typedef struct {
    rf_data_t chip_error_load : 32; // Chip Error: ADD/DATA causing a failure
} __attribute__((__packed__,__aligned__(4))) w_icons_top_chip_error_status1_t;

// REGFILE->chip_error_status2.REGISTER_NAME
typedef struct {
    rf_data_t chip_error_cmd  :  4; // Chip Error: CMD  causing a failure
    rf_data_t chip_error_crc5 :  5; // Chip Error: CRC5 causing a failure
    rf_data_t /* unused */    : 23;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_chip_error_status2_t;

// REGFILE->adc_amp1.REGISTER_NAME
typedef struct {
    rf_data_t amp_gain_g1 : 32; // Enable ADC AMP Gain for CH31~CH0 / 1-> enable
} __attribute__((__packed__,__aligned__(4))) w_icons_top_adc_amp1_t;

// REGFILE->adc_amp2.REGISTER_NAME
typedef struct {
    rf_data_t amp_gain_g2 : 32; // Enable ADC AMP Gain for CH63~CH32 / 1-> enable
} __attribute__((__packed__,__aligned__(4))) w_icons_top_adc_amp2_t;

// REGFILE->rec_stim_control.REGISTER_NAME
typedef struct {
    rf_data_t div_clk_stim : 12; // Clock divider value for stimulator: Reference clock is CLK_REF_I on top-level 
    rf_data_t en_clk_stim  :  1; // Enable Clock divider for stimulator
    rf_data_t stim_mask_en :  8; // Stimulation masks enable signals: order ->[maske7 mask6 ...mask0] 0:off 1:on
    rf_data_t rec_en       :  1; // recording enable 0: recording(on)   1: recording(off)
    rf_data_t /* unused */ : 10;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_rec_stim_control_t;

// REGFILE->stim_mask0_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask0_g1 : 32; // Mask0 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask0_p1_t;

// REGFILE->stim_mask0_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask0_g2 : 32; // Mask0 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask0_p2_t;

// REGFILE->stim_mask1_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask1_g1 : 32; // Mask1 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask1_p1_t;

// REGFILE->stim_mask1_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask1_g2 : 32; // Mask1 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask1_p2_t;

// REGFILE->stim_mask2_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask2_g1 : 32; // Mask2 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask2_p1_t;

// REGFILE->stim_mask2_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask2_g2 : 32; // Mask2 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask2_p2_t;

// REGFILE->stim_mask3_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask3_g1 : 32; // Mask3 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask3_p1_t;

// REGFILE->stim_mask3_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask3_g2 : 32; // Mask3 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask3_p2_t;

// REGFILE->stim_mask4_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask4_g1 : 32; // Mask4 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask4_p1_t;

// REGFILE->stim_mask4_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask4_g2 : 32; // Mask4 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask4_p2_t;

// REGFILE->stim_mask5_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask5_g1 : 32; // Mask5 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask5_p1_t;

// REGFILE->stim_mask5_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask5_g2 : 32; // Mask5 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask5_p2_t;

// REGFILE->stim_mask6_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask6_g1 : 32; // Mask6 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask6_p1_t;

// REGFILE->stim_mask6_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask6_g2 : 32; // Mask6 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask6_p2_t;

// REGFILE->stim_mask7_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask7_g1 : 32; // Mask7 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask7_p1_t;

// REGFILE->stim_mask7_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask7_g2 : 32; // Mask7 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_mask7_p2_t;

// REGFILE->enabled_ch_rec_g1.REGISTER_NAME
typedef struct {
    rf_data_t en_rec_ch_g1 : 32; // dedicated enable signal for enabling recording unit for CH31~Ch0
} __attribute__((__packed__,__aligned__(4))) w_icons_top_enabled_ch_rec_g1_t;

// REGFILE->enabled_ch_rec_g2.REGISTER_NAME
typedef struct {
    rf_data_t en_rec_ch_g2 : 32; // dedicated enable signal for enabling recording unit for CH63~Ch32
} __attribute__((__packed__,__aligned__(4))) w_icons_top_enabled_ch_rec_g2_t;

// REGFILE->rec_discharge_control.REGISTER_NAME
typedef struct {
    rf_data_t div_clk_discharge :  8; // Clock divider value for dischargemain clock divider of  
    rf_data_t en_clk_discharge  :  1; // Enable Clock divider for discharge
    rf_data_t /* unused */      :  3;
    rf_data_t pw_discharge      : 20; // Pulse width for clock discharge
} __attribute__((__packed__,__aligned__(4))) w_icons_top_rec_discharge_control_t;

// REGFILE->stim_ch0_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim0_interval : 16; // Stimulation CH0: interval parameter
    rf_data_t stim0_ia_mux   :  8; // Stimulation CH0: Ia parameter
    rf_data_t stim0_ic       :  8; // Stimulation CH0: Ic parameter
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch0_p0_t;

// REGFILE->stim_ch0_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim0_pulse_wc     : 14; // Stimulation CH0: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim0_pulse_wa_mux : 14; // Stimulation CH0: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch0_pulse_p1_t;

// REGFILE->stim_ch0_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim0_pulse_gap : 14; // Stimulation CH0: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim0_pulse_num : 12; // Stimulation CH0: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim0_pol       :  1; // Stimulation CH0 polarity: 0->Cathode 1->Anode
    rf_data_t stim0_range     :  1; // Stimulation CH0 range: 0 or 1
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch0_pulse_p2_t;

// REGFILE->stim_ch1_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim1_interval : 16; // Stimulation CH1: interval parameter
    rf_data_t stim1_ia_mux   :  8; // Stimulation CH1: Ia parameter
    rf_data_t stim1_ic       :  8; // Stimulation CH1: Ic parameter
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch1_p0_t;

// REGFILE->stim_ch1_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim1_pulse_wc     : 14; // Stimulation CH1: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim1_pulse_wa_mux : 14; // Stimulation CH1: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch1_pulse_p1_t;

// REGFILE->stim_ch1_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim1_pulse_gap : 14; // Stimulation CH1: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim1_pulse_num : 12; // Stimulation CH1: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim1_pol       :  1; // Stimulation CH1 polarity: 0->Cathode 1->Anode
    rf_data_t stim1_range     :  1; // Stimulation CH1 range: 0 or 1
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch1_pulse_p2_t;

// REGFILE->stim_ch2_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim2_interval : 16; // Stimulation CH2: interval parameter
    rf_data_t stim2_ia_mux   :  8; // Stimulation CH2: Ia parameter
    rf_data_t stim2_ic       :  8; // Stimulation CH2: Ic parameter
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch2_p0_t;

// REGFILE->stim_ch2_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim2_pulse_wc     : 14; // Stimulation CH2: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim2_pulse_wa_mux : 14; // Stimulation CH2: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch2_pulse_p1_t;

// REGFILE->stim_ch2_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim2_pulse_gap : 14; // Stimulation CH2: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim2_pulse_num : 12; // Stimulation CH2: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim2_pol       :  1; // Stimulation CH2 polarity: 0->Cathode 1->Anode
    rf_data_t stim2_range     :  1; // Stimulation CH2 range: 0 or 1
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch2_pulse_p2_t;

// REGFILE->stim_ch3_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim3_interval : 16; // Stimulation CH3: interval parameter
    rf_data_t stim3_ia_mux   :  8; // Stimulation CH3: Ia parameter
    rf_data_t stim3_ic       :  8; // Stimulation CH3: Ic parameter
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch3_p0_t;

// REGFILE->stim_ch3_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim3_pulse_wc     : 14; // Stimulation CH3: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim3_pulse_wa_mux : 14; // Stimulation CH3: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch3_pulse_p1_t;

// REGFILE->stim_ch3_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim3_pulse_gap : 14; // Stimulation CH3: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim3_pulse_num : 12; // Stimulation CH3: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim3_pol       :  1; // Stimulation CH3 polarity: 0->Cathode 1->Anode
    rf_data_t stim3_range     :  1; // Stimulation CH3 range: 0 or 1
} __attribute__((__packed__,__aligned__(4))) w_icons_top_stim_ch3_pulse_p2_t;


typedef struct {
    union {w_icons_top_chip_status_id_t        chip_status_id;         uint32_t _chip_status_id_word;};        // chip_status_id
    union {w_icons_top_chip_error_status1_t    chip_error_status1;     uint32_t _chip_error_status1_word;};    // chip_error_status1
    union {w_icons_top_chip_error_status2_t    chip_error_status2;     uint32_t _chip_error_status2_word;};    // chip_error_status2
    union {w_icons_top_adc_amp1_t              adc_amp1;               uint32_t _adc_amp1_word;};              // adc_amp1
    union {w_icons_top_adc_amp2_t              adc_amp2;               uint32_t _adc_amp2_word;};              // adc_amp2
    union {w_icons_top_rec_stim_control_t      rec_stim_control;       uint32_t _rec_stim_control_word;};      // rec_stim_control
    union {w_icons_top_stim_mask0_p1_t         stim_mask0_p1;          uint32_t _stim_mask0_p1_word;};         // stim_mask0_p1
    union {w_icons_top_stim_mask0_p2_t         stim_mask0_p2;          uint32_t _stim_mask0_p2_word;};         // stim_mask0_p2
    union {w_icons_top_stim_mask1_p1_t         stim_mask1_p1;          uint32_t _stim_mask1_p1_word;};         // stim_mask1_p1
    union {w_icons_top_stim_mask1_p2_t         stim_mask1_p2;          uint32_t _stim_mask1_p2_word;};         // stim_mask1_p2
    union {w_icons_top_stim_mask2_p1_t         stim_mask2_p1;          uint32_t _stim_mask2_p1_word;};         // stim_mask2_p1
    union {w_icons_top_stim_mask2_p2_t         stim_mask2_p2;          uint32_t _stim_mask2_p2_word;};         // stim_mask2_p2
    union {w_icons_top_stim_mask3_p1_t         stim_mask3_p1;          uint32_t _stim_mask3_p1_word;};         // stim_mask3_p1
    union {w_icons_top_stim_mask3_p2_t         stim_mask3_p2;          uint32_t _stim_mask3_p2_word;};         // stim_mask3_p2
    union {w_icons_top_stim_mask4_p1_t         stim_mask4_p1;          uint32_t _stim_mask4_p1_word;};         // stim_mask4_p1
    union {w_icons_top_stim_mask4_p2_t         stim_mask4_p2;          uint32_t _stim_mask4_p2_word;};         // stim_mask4_p2
    union {w_icons_top_stim_mask5_p1_t         stim_mask5_p1;          uint32_t _stim_mask5_p1_word;};         // stim_mask5_p1
    union {w_icons_top_stim_mask5_p2_t         stim_mask5_p2;          uint32_t _stim_mask5_p2_word;};         // stim_mask5_p2
    union {w_icons_top_stim_mask6_p1_t         stim_mask6_p1;          uint32_t _stim_mask6_p1_word;};         // stim_mask6_p1
    union {w_icons_top_stim_mask6_p2_t         stim_mask6_p2;          uint32_t _stim_mask6_p2_word;};         // stim_mask6_p2
    union {w_icons_top_stim_mask7_p1_t         stim_mask7_p1;          uint32_t _stim_mask7_p1_word;};         // stim_mask7_p1
    union {w_icons_top_stim_mask7_p2_t         stim_mask7_p2;          uint32_t _stim_mask7_p2_word;};         // stim_mask7_p2
    union {w_icons_top_enabled_ch_rec_g1_t     enabled_ch_rec_g1;      uint32_t _enabled_ch_rec_g1_word;};     // enabled_ch_rec_g1
    union {w_icons_top_enabled_ch_rec_g2_t     enabled_ch_rec_g2;      uint32_t _enabled_ch_rec_g2_word;};     // enabled_ch_rec_g2
    union {w_icons_top_rec_discharge_control_t rec_discharge_control;  uint32_t _rec_discharge_control_word;}; // rec_discharge_control
    union {w_icons_top_stim_ch0_p0_t           stim_ch0_p0;            uint32_t _stim_ch0_p0_word;};           // stim_ch0_p0
    union {w_icons_top_stim_ch0_pulse_p1_t     stim_ch0_pulse_p1;      uint32_t _stim_ch0_pulse_p1_word;};     // stim_ch0_pulse_p1
    union {w_icons_top_stim_ch0_pulse_p2_t     stim_ch0_pulse_p2;      uint32_t _stim_ch0_pulse_p2_word;};     // stim_ch0_pulse_p2
    union {w_icons_top_stim_ch1_p0_t           stim_ch1_p0;            uint32_t _stim_ch1_p0_word;};           // stim_ch1_p0
    union {w_icons_top_stim_ch1_pulse_p1_t     stim_ch1_pulse_p1;      uint32_t _stim_ch1_pulse_p1_word;};     // stim_ch1_pulse_p1
    union {w_icons_top_stim_ch1_pulse_p2_t     stim_ch1_pulse_p2;      uint32_t _stim_ch1_pulse_p2_word;};     // stim_ch1_pulse_p2
    union {w_icons_top_stim_ch2_p0_t           stim_ch2_p0;            uint32_t _stim_ch2_p0_word;};           // stim_ch2_p0
    union {w_icons_top_stim_ch2_pulse_p1_t     stim_ch2_pulse_p1;      uint32_t _stim_ch2_pulse_p1_word;};     // stim_ch2_pulse_p1
    union {w_icons_top_stim_ch2_pulse_p2_t     stim_ch2_pulse_p2;      uint32_t _stim_ch2_pulse_p2_word;};     // stim_ch2_pulse_p2
    union {w_icons_top_stim_ch3_p0_t           stim_ch3_p0;            uint32_t _stim_ch3_p0_word;};           // stim_ch3_p0
    union {w_icons_top_stim_ch3_pulse_p1_t     stim_ch3_pulse_p1;      uint32_t _stim_ch3_pulse_p1_word;};     // stim_ch3_pulse_p1
    union {w_icons_top_stim_ch3_pulse_p2_t     stim_ch3_pulse_p2;      uint32_t _stim_ch3_pulse_p2_word;};     // stim_ch3_pulse_p2
} __attribute__((__packed__,__aligned__(4))) rf_w_icons_top_t;

/* icglue keep begin custom-decl *//* icglue keep end */

#endif
