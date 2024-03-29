/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */

#ifndef __RF_W_ICONS_TOP_H__
#define __RF_W_ICONS_TOP_H__

#include <regfile_contrib.h>

/* icglue keep begin custom-header *//* icglue keep end */


// REGFILE->chip_status_id.REGISTER_NAME
typedef struct {
    rf_data_t chip_id : 32; // Chip ID: R(01), S(01), Version(01), Ch(64)
} __attribute__((__packed__)) w_icons_top_chip_status_id_t;

// REGFILE->chip_error_status1.REGISTER_NAME
typedef struct {
    rf_data_t chip_error_load : 32; // Chip Error: ADD/DATA causing a failure
} __attribute__((__packed__)) w_icons_top_chip_error_status1_t;

// REGFILE->chip_error_status2.REGISTER_NAME
typedef struct {
    rf_data_t chip_error_cmd  :  4; // Chip Error: CMD  causing a failure
    rf_data_t chip_error_crc5 :  5; // Chip Error: CRC5 causing a failure
    rf_data_t /* unused */    : 23;
} __attribute__((__packed__)) w_icons_top_chip_error_status2_t;

// REGFILE->adc_amp1.REGISTER_NAME
typedef struct {
    rf_data_t amp_gain_g1 : 32; // Enable ADC AMP Gain for CH31~CH0 / 1-> enable
} __attribute__((__packed__)) w_icons_top_adc_amp1_t;

// REGFILE->adc_amp2.REGISTER_NAME
typedef struct {
    rf_data_t amp_gain_g2 : 32; // Enable ADC AMP Gain for CH63~CH32 / 1-> enable
} __attribute__((__packed__)) w_icons_top_adc_amp2_t;

// REGFILE->rec_stim_control.REGISTER_NAME
typedef struct {
    rf_data_t div_clk_stim : 12; // Clock divider value for stimulator: Reference clock is CLK_REF_I on top-level 
    rf_data_t en_clk_stim  :  1; // Enable Clock divider for stimulator
    rf_data_t stim_mask_en :  8; // Stimulation masks enable signals: order ->[maske7 mask6 ...mask0] 0:off 1:on
    rf_data_t rec_en       :  1; // recording enable 0: recording(on)   1: recording(off)
    rf_data_t /* unused */ : 10;
} __attribute__((__packed__)) w_icons_top_rec_stim_control_t;

// REGFILE->stim_mask0_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask0_g1 : 32; // Mask0 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask0_p1_t;

// REGFILE->stim_mask0_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask0_g2 : 32; // Mask0 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask0_p2_t;

// REGFILE->stim_mask1_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask1_g1 : 32; // Mask1 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask1_p1_t;

// REGFILE->stim_mask1_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask1_g2 : 32; // Mask1 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask1_p2_t;

// REGFILE->stim_mask2_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask2_g1 : 32; // Mask2 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask2_p1_t;

// REGFILE->stim_mask2_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask2_g2 : 32; // Mask2 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask2_p2_t;

// REGFILE->stim_mask3_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask3_g1 : 32; // Mask3 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask3_p1_t;

// REGFILE->stim_mask3_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask3_g2 : 32; // Mask3 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask3_p2_t;

// REGFILE->stim_mask4_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask4_g1 : 32; // Mask4 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask4_p1_t;

// REGFILE->stim_mask4_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask4_g2 : 32; // Mask4 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask4_p2_t;

// REGFILE->stim_mask5_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask5_g1 : 32; // Mask5 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask5_p1_t;

// REGFILE->stim_mask5_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask5_g2 : 32; // Mask5 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask5_p2_t;

// REGFILE->stim_mask6_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask6_g1 : 32; // Mask6 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask6_p1_t;

// REGFILE->stim_mask6_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask6_g2 : 32; // Mask6 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask6_p2_t;

// REGFILE->stim_mask7_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask7_g1 : 32; // Mask7 to enable Stimulator Enable for CH31~CH0
} __attribute__((__packed__)) w_icons_top_stim_mask7_p1_t;

// REGFILE->stim_mask7_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim_mask7_g2 : 32; // Mask7 to enable Stimulator Enable for CH63~CH32
} __attribute__((__packed__)) w_icons_top_stim_mask7_p2_t;

// REGFILE->enabled_ch_rec_g1.REGISTER_NAME
typedef struct {
    rf_data_t en_rec_ch_g1 : 32; // dedicated enable signal for enabling recording unit for CH31~Ch0
} __attribute__((__packed__)) w_icons_top_enabled_ch_rec_g1_t;

// REGFILE->enabled_ch_rec_g2.REGISTER_NAME
typedef struct {
    rf_data_t en_rec_ch_g2 : 32; // dedicated enable signal for enabling recording unit for CH63~Ch32
} __attribute__((__packed__)) w_icons_top_enabled_ch_rec_g2_t;

// REGFILE->rec_discharge_control.REGISTER_NAME
typedef struct {
    rf_data_t div_clk_discharge :  8; // Clock divider value for dischargemain clock divider of  
    rf_data_t en_clk_discharge  :  1; // Enable Clock divider for discharge
    rf_data_t /* unused */      :  3;
    rf_data_t pw_discharge      : 20; // Pulse width for clock discharge
} __attribute__((__packed__)) w_icons_top_rec_discharge_control_t;

// REGFILE->stim_ch0_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim0_interval : 16; // Stimulation CH0: interval parameter
    rf_data_t stim0_ia_mux   :  8; // Stimulation CH0: Ia parameter
    rf_data_t stim0_ic       :  8; // Stimulation CH0: Ic parameter
} __attribute__((__packed__)) w_icons_top_stim_ch0_p0_t;

// REGFILE->stim_ch0_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim0_pulse_wc     : 14; // Stimulation CH0: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim0_pulse_wa_mux : 14; // Stimulation CH0: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__)) w_icons_top_stim_ch0_pulse_p1_t;

// REGFILE->stim_ch0_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim0_pulse_gap : 14; // Stimulation CH0: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim0_pulse_num : 12; // Stimulation CH0: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim0_pol       :  1; // Stimulation CH0 polarity: 0->Cathode 1->Anode
    rf_data_t stim0_range     :  1; // Stimulation CH0 range: 0 or 1
} __attribute__((__packed__)) w_icons_top_stim_ch0_pulse_p2_t;

// REGFILE->stim_ch1_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim1_interval : 16; // Stimulation CH1: interval parameter
    rf_data_t stim1_ia_mux   :  8; // Stimulation CH1: Ia parameter
    rf_data_t stim1_ic       :  8; // Stimulation CH1: Ic parameter
} __attribute__((__packed__)) w_icons_top_stim_ch1_p0_t;

// REGFILE->stim_ch1_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim1_pulse_wc     : 14; // Stimulation CH1: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim1_pulse_wa_mux : 14; // Stimulation CH1: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__)) w_icons_top_stim_ch1_pulse_p1_t;

// REGFILE->stim_ch1_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim1_pulse_gap : 14; // Stimulation CH1: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim1_pulse_num : 12; // Stimulation CH1: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim1_pol       :  1; // Stimulation CH1 polarity: 0->Cathode 1->Anode
    rf_data_t stim1_range     :  1; // Stimulation CH1 range: 0 or 1
} __attribute__((__packed__)) w_icons_top_stim_ch1_pulse_p2_t;

// REGFILE->stim_ch2_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim2_interval : 16; // Stimulation CH2: interval parameter
    rf_data_t stim2_ia_mux   :  8; // Stimulation CH2: Ia parameter
    rf_data_t stim2_ic       :  8; // Stimulation CH2: Ic parameter
} __attribute__((__packed__)) w_icons_top_stim_ch2_p0_t;

// REGFILE->stim_ch2_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim2_pulse_wc     : 14; // Stimulation CH2: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim2_pulse_wa_mux : 14; // Stimulation CH2: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__)) w_icons_top_stim_ch2_pulse_p1_t;

// REGFILE->stim_ch2_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim2_pulse_gap : 14; // Stimulation CH2: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim2_pulse_num : 12; // Stimulation CH2: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim2_pol       :  1; // Stimulation CH2 polarity: 0->Cathode 1->Anode
    rf_data_t stim2_range     :  1; // Stimulation CH2 range: 0 or 1
} __attribute__((__packed__)) w_icons_top_stim_ch2_pulse_p2_t;

// REGFILE->stim_ch3_p0.REGISTER_NAME
typedef struct {
    rf_data_t stim3_interval : 16; // Stimulation CH3: interval parameter
    rf_data_t stim3_ia_mux   :  8; // Stimulation CH3: Ia parameter
    rf_data_t stim3_ic       :  8; // Stimulation CH3: Ic parameter
} __attribute__((__packed__)) w_icons_top_stim_ch3_p0_t;

// REGFILE->stim_ch3_pulse_p1.REGISTER_NAME
typedef struct {
    rf_data_t stim3_pulse_wc     : 14; // Stimulation CH3: PulseWC
    rf_data_t /* unused */       :  2;
    rf_data_t stim3_pulse_wa_mux : 14; // Stimulation CH3: PulseWA
    rf_data_t /* unused */       :  2;
} __attribute__((__packed__)) w_icons_top_stim_ch3_pulse_p1_t;

// REGFILE->stim_ch3_pulse_p2.REGISTER_NAME
typedef struct {
    rf_data_t stim3_pulse_gap : 14; // Stimulation CH3: PulseGap
    rf_data_t /* unused */    :  2;
    rf_data_t stim3_pulse_num : 12; // Stimulation CH3: PulseNum
    rf_data_t /* unused */    :  2;
    rf_data_t stim3_pol       :  1; // Stimulation CH3 polarity: 0->Cathode 1->Anode
    rf_data_t stim3_range     :  1; // Stimulation CH3 range: 0 or 1
} __attribute__((__packed__)) w_icons_top_stim_ch3_pulse_p2_t;


class rf_w_icons_top_t : public regfile_t {
    public:
        rf_w_icons_top_t (regfile_dev &dev, rf_addr_t base_addr);

        class chip_status_id_t : public _entry_t {
            public:
                chip_status_id_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                chip_status_id_t& operator= (w_icons_top_chip_status_id_t rhs);
                operator w_icons_top_chip_status_id_t ();
                rf_data_t* operator& ();

                _reg_ro_t chip_id;
        } chip_status_id;
        _entry_t _chip_status_id_word;

        class chip_error_status1_t : public _entry_t {
            public:
                chip_error_status1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                chip_error_status1_t& operator= (w_icons_top_chip_error_status1_t rhs);
                operator w_icons_top_chip_error_status1_t ();
                rf_data_t* operator& ();

                _reg_rw_t chip_error_load;
        } chip_error_status1;
        _entry_t _chip_error_status1_word;

        class chip_error_status2_t : public _entry_t {
            public:
                chip_error_status2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                chip_error_status2_t& operator= (w_icons_top_chip_error_status2_t rhs);
                operator w_icons_top_chip_error_status2_t ();
                rf_data_t* operator& ();

                _reg_rw_t chip_error_cmd;
                _reg_rw_t chip_error_crc5;
        } chip_error_status2;
        _entry_t _chip_error_status2_word;

        class adc_amp1_t : public _entry_t {
            public:
                adc_amp1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                adc_amp1_t& operator= (w_icons_top_adc_amp1_t rhs);
                operator w_icons_top_adc_amp1_t ();
                rf_data_t* operator& ();

                _reg_rw_t amp_gain_g1;
        } adc_amp1;
        _entry_t _adc_amp1_word;

        class adc_amp2_t : public _entry_t {
            public:
                adc_amp2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                adc_amp2_t& operator= (w_icons_top_adc_amp2_t rhs);
                operator w_icons_top_adc_amp2_t ();
                rf_data_t* operator& ();

                _reg_rw_t amp_gain_g2;
        } adc_amp2;
        _entry_t _adc_amp2_word;

        class rec_stim_control_t : public _entry_t {
            public:
                rec_stim_control_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                rec_stim_control_t& operator= (w_icons_top_rec_stim_control_t rhs);
                operator w_icons_top_rec_stim_control_t ();
                rf_data_t* operator& ();

                _reg_rw_t div_clk_stim;
                _reg_rw_t en_clk_stim;
                _reg_rw_t stim_mask_en;
                _reg_rw_t rec_en;
        } rec_stim_control;
        _entry_t _rec_stim_control_word;

        class stim_mask0_p1_t : public _entry_t {
            public:
                stim_mask0_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask0_p1_t& operator= (w_icons_top_stim_mask0_p1_t rhs);
                operator w_icons_top_stim_mask0_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask0_g1;
        } stim_mask0_p1;
        _entry_t _stim_mask0_p1_word;

        class stim_mask0_p2_t : public _entry_t {
            public:
                stim_mask0_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask0_p2_t& operator= (w_icons_top_stim_mask0_p2_t rhs);
                operator w_icons_top_stim_mask0_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask0_g2;
        } stim_mask0_p2;
        _entry_t _stim_mask0_p2_word;

        class stim_mask1_p1_t : public _entry_t {
            public:
                stim_mask1_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask1_p1_t& operator= (w_icons_top_stim_mask1_p1_t rhs);
                operator w_icons_top_stim_mask1_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask1_g1;
        } stim_mask1_p1;
        _entry_t _stim_mask1_p1_word;

        class stim_mask1_p2_t : public _entry_t {
            public:
                stim_mask1_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask1_p2_t& operator= (w_icons_top_stim_mask1_p2_t rhs);
                operator w_icons_top_stim_mask1_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask1_g2;
        } stim_mask1_p2;
        _entry_t _stim_mask1_p2_word;

        class stim_mask2_p1_t : public _entry_t {
            public:
                stim_mask2_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask2_p1_t& operator= (w_icons_top_stim_mask2_p1_t rhs);
                operator w_icons_top_stim_mask2_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask2_g1;
        } stim_mask2_p1;
        _entry_t _stim_mask2_p1_word;

        class stim_mask2_p2_t : public _entry_t {
            public:
                stim_mask2_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask2_p2_t& operator= (w_icons_top_stim_mask2_p2_t rhs);
                operator w_icons_top_stim_mask2_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask2_g2;
        } stim_mask2_p2;
        _entry_t _stim_mask2_p2_word;

        class stim_mask3_p1_t : public _entry_t {
            public:
                stim_mask3_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask3_p1_t& operator= (w_icons_top_stim_mask3_p1_t rhs);
                operator w_icons_top_stim_mask3_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask3_g1;
        } stim_mask3_p1;
        _entry_t _stim_mask3_p1_word;

        class stim_mask3_p2_t : public _entry_t {
            public:
                stim_mask3_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask3_p2_t& operator= (w_icons_top_stim_mask3_p2_t rhs);
                operator w_icons_top_stim_mask3_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask3_g2;
        } stim_mask3_p2;
        _entry_t _stim_mask3_p2_word;

        class stim_mask4_p1_t : public _entry_t {
            public:
                stim_mask4_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask4_p1_t& operator= (w_icons_top_stim_mask4_p1_t rhs);
                operator w_icons_top_stim_mask4_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask4_g1;
        } stim_mask4_p1;
        _entry_t _stim_mask4_p1_word;

        class stim_mask4_p2_t : public _entry_t {
            public:
                stim_mask4_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask4_p2_t& operator= (w_icons_top_stim_mask4_p2_t rhs);
                operator w_icons_top_stim_mask4_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask4_g2;
        } stim_mask4_p2;
        _entry_t _stim_mask4_p2_word;

        class stim_mask5_p1_t : public _entry_t {
            public:
                stim_mask5_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask5_p1_t& operator= (w_icons_top_stim_mask5_p1_t rhs);
                operator w_icons_top_stim_mask5_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask5_g1;
        } stim_mask5_p1;
        _entry_t _stim_mask5_p1_word;

        class stim_mask5_p2_t : public _entry_t {
            public:
                stim_mask5_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask5_p2_t& operator= (w_icons_top_stim_mask5_p2_t rhs);
                operator w_icons_top_stim_mask5_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask5_g2;
        } stim_mask5_p2;
        _entry_t _stim_mask5_p2_word;

        class stim_mask6_p1_t : public _entry_t {
            public:
                stim_mask6_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask6_p1_t& operator= (w_icons_top_stim_mask6_p1_t rhs);
                operator w_icons_top_stim_mask6_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask6_g1;
        } stim_mask6_p1;
        _entry_t _stim_mask6_p1_word;

        class stim_mask6_p2_t : public _entry_t {
            public:
                stim_mask6_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask6_p2_t& operator= (w_icons_top_stim_mask6_p2_t rhs);
                operator w_icons_top_stim_mask6_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask6_g2;
        } stim_mask6_p2;
        _entry_t _stim_mask6_p2_word;

        class stim_mask7_p1_t : public _entry_t {
            public:
                stim_mask7_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask7_p1_t& operator= (w_icons_top_stim_mask7_p1_t rhs);
                operator w_icons_top_stim_mask7_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask7_g1;
        } stim_mask7_p1;
        _entry_t _stim_mask7_p1_word;

        class stim_mask7_p2_t : public _entry_t {
            public:
                stim_mask7_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_mask7_p2_t& operator= (w_icons_top_stim_mask7_p2_t rhs);
                operator w_icons_top_stim_mask7_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim_mask7_g2;
        } stim_mask7_p2;
        _entry_t _stim_mask7_p2_word;

        class enabled_ch_rec_g1_t : public _entry_t {
            public:
                enabled_ch_rec_g1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                enabled_ch_rec_g1_t& operator= (w_icons_top_enabled_ch_rec_g1_t rhs);
                operator w_icons_top_enabled_ch_rec_g1_t ();
                rf_data_t* operator& ();

                _reg_rw_t en_rec_ch_g1;
        } enabled_ch_rec_g1;
        _entry_t _enabled_ch_rec_g1_word;

        class enabled_ch_rec_g2_t : public _entry_t {
            public:
                enabled_ch_rec_g2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                enabled_ch_rec_g2_t& operator= (w_icons_top_enabled_ch_rec_g2_t rhs);
                operator w_icons_top_enabled_ch_rec_g2_t ();
                rf_data_t* operator& ();

                _reg_rw_t en_rec_ch_g2;
        } enabled_ch_rec_g2;
        _entry_t _enabled_ch_rec_g2_word;

        class rec_discharge_control_t : public _entry_t {
            public:
                rec_discharge_control_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                rec_discharge_control_t& operator= (w_icons_top_rec_discharge_control_t rhs);
                operator w_icons_top_rec_discharge_control_t ();
                rf_data_t* operator& ();

                _reg_rw_t div_clk_discharge;
                _reg_rw_t en_clk_discharge;
                _reg_rw_t pw_discharge;
        } rec_discharge_control;
        _entry_t _rec_discharge_control_word;

        class stim_ch0_p0_t : public _entry_t {
            public:
                stim_ch0_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch0_p0_t& operator= (w_icons_top_stim_ch0_p0_t rhs);
                operator w_icons_top_stim_ch0_p0_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim0_interval;
                _reg_rw_t stim0_ia_mux;
                _reg_rw_t stim0_ic;
        } stim_ch0_p0;
        _entry_t _stim_ch0_p0_word;

        class stim_ch0_pulse_p1_t : public _entry_t {
            public:
                stim_ch0_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch0_pulse_p1_t& operator= (w_icons_top_stim_ch0_pulse_p1_t rhs);
                operator w_icons_top_stim_ch0_pulse_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim0_pulse_wc;
                _reg_rw_t stim0_pulse_wa_mux;
        } stim_ch0_pulse_p1;
        _entry_t _stim_ch0_pulse_p1_word;

        class stim_ch0_pulse_p2_t : public _entry_t {
            public:
                stim_ch0_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch0_pulse_p2_t& operator= (w_icons_top_stim_ch0_pulse_p2_t rhs);
                operator w_icons_top_stim_ch0_pulse_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim0_pulse_gap;
                _reg_rw_t stim0_pulse_num;
                _reg_rw_t stim0_pol;
                _reg_rw_t stim0_range;
        } stim_ch0_pulse_p2;
        _entry_t _stim_ch0_pulse_p2_word;

        class stim_ch1_p0_t : public _entry_t {
            public:
                stim_ch1_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch1_p0_t& operator= (w_icons_top_stim_ch1_p0_t rhs);
                operator w_icons_top_stim_ch1_p0_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim1_interval;
                _reg_rw_t stim1_ia_mux;
                _reg_rw_t stim1_ic;
        } stim_ch1_p0;
        _entry_t _stim_ch1_p0_word;

        class stim_ch1_pulse_p1_t : public _entry_t {
            public:
                stim_ch1_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch1_pulse_p1_t& operator= (w_icons_top_stim_ch1_pulse_p1_t rhs);
                operator w_icons_top_stim_ch1_pulse_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim1_pulse_wc;
                _reg_rw_t stim1_pulse_wa_mux;
        } stim_ch1_pulse_p1;
        _entry_t _stim_ch1_pulse_p1_word;

        class stim_ch1_pulse_p2_t : public _entry_t {
            public:
                stim_ch1_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch1_pulse_p2_t& operator= (w_icons_top_stim_ch1_pulse_p2_t rhs);
                operator w_icons_top_stim_ch1_pulse_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim1_pulse_gap;
                _reg_rw_t stim1_pulse_num;
                _reg_rw_t stim1_pol;
                _reg_rw_t stim1_range;
        } stim_ch1_pulse_p2;
        _entry_t _stim_ch1_pulse_p2_word;

        class stim_ch2_p0_t : public _entry_t {
            public:
                stim_ch2_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch2_p0_t& operator= (w_icons_top_stim_ch2_p0_t rhs);
                operator w_icons_top_stim_ch2_p0_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim2_interval;
                _reg_rw_t stim2_ia_mux;
                _reg_rw_t stim2_ic;
        } stim_ch2_p0;
        _entry_t _stim_ch2_p0_word;

        class stim_ch2_pulse_p1_t : public _entry_t {
            public:
                stim_ch2_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch2_pulse_p1_t& operator= (w_icons_top_stim_ch2_pulse_p1_t rhs);
                operator w_icons_top_stim_ch2_pulse_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim2_pulse_wc;
                _reg_rw_t stim2_pulse_wa_mux;
        } stim_ch2_pulse_p1;
        _entry_t _stim_ch2_pulse_p1_word;

        class stim_ch2_pulse_p2_t : public _entry_t {
            public:
                stim_ch2_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch2_pulse_p2_t& operator= (w_icons_top_stim_ch2_pulse_p2_t rhs);
                operator w_icons_top_stim_ch2_pulse_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim2_pulse_gap;
                _reg_rw_t stim2_pulse_num;
                _reg_rw_t stim2_pol;
                _reg_rw_t stim2_range;
        } stim_ch2_pulse_p2;
        _entry_t _stim_ch2_pulse_p2_word;

        class stim_ch3_p0_t : public _entry_t {
            public:
                stim_ch3_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch3_p0_t& operator= (w_icons_top_stim_ch3_p0_t rhs);
                operator w_icons_top_stim_ch3_p0_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim3_interval;
                _reg_rw_t stim3_ia_mux;
                _reg_rw_t stim3_ic;
        } stim_ch3_p0;
        _entry_t _stim_ch3_p0_word;

        class stim_ch3_pulse_p1_t : public _entry_t {
            public:
                stim_ch3_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch3_pulse_p1_t& operator= (w_icons_top_stim_ch3_pulse_p1_t rhs);
                operator w_icons_top_stim_ch3_pulse_p1_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim3_pulse_wc;
                _reg_rw_t stim3_pulse_wa_mux;
        } stim_ch3_pulse_p1;
        _entry_t _stim_ch3_pulse_p1_word;

        class stim_ch3_pulse_p2_t : public _entry_t {
            public:
                stim_ch3_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask);

                stim_ch3_pulse_p2_t& operator= (w_icons_top_stim_ch3_pulse_p2_t rhs);
                operator w_icons_top_stim_ch3_pulse_p2_t ();
                rf_data_t* operator& ();

                _reg_rw_t stim3_pulse_gap;
                _reg_rw_t stim3_pulse_num;
                _reg_rw_t stim3_pol;
                _reg_rw_t stim3_range;
        } stim_ch3_pulse_p2;
        _entry_t _stim_ch3_pulse_p2_word;
    /* icglue keep begin custom-class-decl *//* icglue keep end */
};

/* icglue keep begin custom-decl *//* icglue keep end */

#endif
