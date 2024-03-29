/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */

/* icglue keep begin custom-header *//* icglue keep end */

#include <rf_w_icons_top.h>

rf_w_icons_top_t::rf_w_icons_top_t (regfile_dev &dev, rf_addr_t base_addr) :
    regfile_t             (dev, base_addr),
    chip_status_id        (*this, 0x0, 0x00000000), _chip_status_id_word        (*this, 0x0, 0x00000000),
    chip_error_status1    (*this, 0x4, 0x00000000), _chip_error_status1_word    (*this, 0x4, 0x00000000),
    chip_error_status2    (*this, 0x8, 0xFFFFFE00), _chip_error_status2_word    (*this, 0x8, 0xFFFFFE00),
    adc_amp1              (*this, 0xc, 0x00000000), _adc_amp1_word              (*this, 0xc, 0x00000000),
    adc_amp2              (*this, 0x10, 0x00000000), _adc_amp2_word              (*this, 0x10, 0x00000000),
    rec_stim_control      (*this, 0x14, 0xFFC00000), _rec_stim_control_word      (*this, 0x14, 0xFFC00000),
    stim_mask0_p1         (*this, 0x18, 0x00000000), _stim_mask0_p1_word         (*this, 0x18, 0x00000000),
    stim_mask0_p2         (*this, 0x1c, 0x00000000), _stim_mask0_p2_word         (*this, 0x1c, 0x00000000),
    stim_mask1_p1         (*this, 0x20, 0x00000000), _stim_mask1_p1_word         (*this, 0x20, 0x00000000),
    stim_mask1_p2         (*this, 0x24, 0x00000000), _stim_mask1_p2_word         (*this, 0x24, 0x00000000),
    stim_mask2_p1         (*this, 0x28, 0x00000000), _stim_mask2_p1_word         (*this, 0x28, 0x00000000),
    stim_mask2_p2         (*this, 0x2c, 0x00000000), _stim_mask2_p2_word         (*this, 0x2c, 0x00000000),
    stim_mask3_p1         (*this, 0x30, 0x00000000), _stim_mask3_p1_word         (*this, 0x30, 0x00000000),
    stim_mask3_p2         (*this, 0x34, 0x00000000), _stim_mask3_p2_word         (*this, 0x34, 0x00000000),
    stim_mask4_p1         (*this, 0x38, 0x00000000), _stim_mask4_p1_word         (*this, 0x38, 0x00000000),
    stim_mask4_p2         (*this, 0x3c, 0x00000000), _stim_mask4_p2_word         (*this, 0x3c, 0x00000000),
    stim_mask5_p1         (*this, 0x40, 0x00000000), _stim_mask5_p1_word         (*this, 0x40, 0x00000000),
    stim_mask5_p2         (*this, 0x44, 0x00000000), _stim_mask5_p2_word         (*this, 0x44, 0x00000000),
    stim_mask6_p1         (*this, 0x48, 0x00000000), _stim_mask6_p1_word         (*this, 0x48, 0x00000000),
    stim_mask6_p2         (*this, 0x4c, 0x00000000), _stim_mask6_p2_word         (*this, 0x4c, 0x00000000),
    stim_mask7_p1         (*this, 0x50, 0x00000000), _stim_mask7_p1_word         (*this, 0x50, 0x00000000),
    stim_mask7_p2         (*this, 0x54, 0x00000000), _stim_mask7_p2_word         (*this, 0x54, 0x00000000),
    enabled_ch_rec_g1     (*this, 0x58, 0x00000000), _enabled_ch_rec_g1_word     (*this, 0x58, 0x00000000),
    enabled_ch_rec_g2     (*this, 0x5c, 0x00000000), _enabled_ch_rec_g2_word     (*this, 0x5c, 0x00000000),
    rec_discharge_control (*this, 0x60, 0x00000E00), _rec_discharge_control_word (*this, 0x60, 0x00000E00),
    stim_ch0_p0           (*this, 0x64, 0x00000000), _stim_ch0_p0_word           (*this, 0x64, 0x00000000),
    stim_ch0_pulse_p1     (*this, 0x68, 0xC000C000), _stim_ch0_pulse_p1_word     (*this, 0x68, 0xC000C000),
    stim_ch0_pulse_p2     (*this, 0x6c, 0x3000C000), _stim_ch0_pulse_p2_word     (*this, 0x6c, 0x3000C000),
    stim_ch1_p0           (*this, 0x70, 0x00000000), _stim_ch1_p0_word           (*this, 0x70, 0x00000000),
    stim_ch1_pulse_p1     (*this, 0x74, 0xC000C000), _stim_ch1_pulse_p1_word     (*this, 0x74, 0xC000C000),
    stim_ch1_pulse_p2     (*this, 0x78, 0x3000C000), _stim_ch1_pulse_p2_word     (*this, 0x78, 0x3000C000),
    stim_ch2_p0           (*this, 0x7c, 0x00000000), _stim_ch2_p0_word           (*this, 0x7c, 0x00000000),
    stim_ch2_pulse_p1     (*this, 0x80, 0xC000C000), _stim_ch2_pulse_p1_word     (*this, 0x80, 0xC000C000),
    stim_ch2_pulse_p2     (*this, 0x84, 0x3000C000), _stim_ch2_pulse_p2_word     (*this, 0x84, 0x3000C000),
    stim_ch3_p0           (*this, 0x88, 0x00000000), _stim_ch3_p0_word           (*this, 0x88, 0x00000000),
    stim_ch3_pulse_p1     (*this, 0x8c, 0xC000C000), _stim_ch3_pulse_p1_word     (*this, 0x8c, 0xC000C000),
    stim_ch3_pulse_p2     (*this, 0x90, 0x3000C000), _stim_ch3_pulse_p2_word     (*this, 0x90, 0x3000C000)
{
    /* icglue keep begin custom-constr *//* icglue keep end */
}

// constructor chip_status_id
rf_w_icons_top_t::chip_status_id_t::chip_status_id_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t (rf, addr, unused_mask),
    // registers constructor:,
    chip_id (*this,  0, 31)
{}

// overload assignment operator (chip_status_id)
rf_w_icons_top_t::chip_status_id_t& rf_w_icons_top_t::chip_status_id_t::operator=(w_icons_top_chip_status_id_t rhs)
{
    union {
        w_icons_top_chip_status_id_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (chip_status_id)
rf_w_icons_top_t::chip_status_id_t::operator w_icons_top_chip_status_id_t () {
    union {
        w_icons_top_chip_status_id_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (chip_status_id)
rf_data_t *rf_w_icons_top_t::chip_status_id_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor chip_error_status1
rf_w_icons_top_t::chip_error_status1_t::chip_error_status1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    chip_error_load (*this,  0, 31)
{}

// overload assignment operator (chip_error_status1)
rf_w_icons_top_t::chip_error_status1_t& rf_w_icons_top_t::chip_error_status1_t::operator=(w_icons_top_chip_error_status1_t rhs)
{
    union {
        w_icons_top_chip_error_status1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (chip_error_status1)
rf_w_icons_top_t::chip_error_status1_t::operator w_icons_top_chip_error_status1_t () {
    union {
        w_icons_top_chip_error_status1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (chip_error_status1)
rf_data_t *rf_w_icons_top_t::chip_error_status1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor chip_error_status2
rf_w_icons_top_t::chip_error_status2_t::chip_error_status2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    chip_error_cmd  (*this,  0,  3),
    chip_error_crc5 (*this,  4,  8)
{}

// overload assignment operator (chip_error_status2)
rf_w_icons_top_t::chip_error_status2_t& rf_w_icons_top_t::chip_error_status2_t::operator=(w_icons_top_chip_error_status2_t rhs)
{
    union {
        w_icons_top_chip_error_status2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (chip_error_status2)
rf_w_icons_top_t::chip_error_status2_t::operator w_icons_top_chip_error_status2_t () {
    union {
        w_icons_top_chip_error_status2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (chip_error_status2)
rf_data_t *rf_w_icons_top_t::chip_error_status2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor adc_amp1
rf_w_icons_top_t::adc_amp1_t::adc_amp1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    amp_gain_g1     (*this,  0, 31)
{}

// overload assignment operator (adc_amp1)
rf_w_icons_top_t::adc_amp1_t& rf_w_icons_top_t::adc_amp1_t::operator=(w_icons_top_adc_amp1_t rhs)
{
    union {
        w_icons_top_adc_amp1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (adc_amp1)
rf_w_icons_top_t::adc_amp1_t::operator w_icons_top_adc_amp1_t () {
    union {
        w_icons_top_adc_amp1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (adc_amp1)
rf_data_t *rf_w_icons_top_t::adc_amp1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor adc_amp2
rf_w_icons_top_t::adc_amp2_t::adc_amp2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    amp_gain_g2     (*this,  0, 31)
{}

// overload assignment operator (adc_amp2)
rf_w_icons_top_t::adc_amp2_t& rf_w_icons_top_t::adc_amp2_t::operator=(w_icons_top_adc_amp2_t rhs)
{
    union {
        w_icons_top_adc_amp2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (adc_amp2)
rf_w_icons_top_t::adc_amp2_t::operator w_icons_top_adc_amp2_t () {
    union {
        w_icons_top_adc_amp2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (adc_amp2)
rf_data_t *rf_w_icons_top_t::adc_amp2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor rec_stim_control
rf_w_icons_top_t::rec_stim_control_t::rec_stim_control_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    div_clk_stim    (*this,  0, 11),
    en_clk_stim     (*this, 12, 12),
    stim_mask_en    (*this, 13, 20),
    rec_en          (*this, 21, 21)
{}

// overload assignment operator (rec_stim_control)
rf_w_icons_top_t::rec_stim_control_t& rf_w_icons_top_t::rec_stim_control_t::operator=(w_icons_top_rec_stim_control_t rhs)
{
    union {
        w_icons_top_rec_stim_control_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (rec_stim_control)
rf_w_icons_top_t::rec_stim_control_t::operator w_icons_top_rec_stim_control_t () {
    union {
        w_icons_top_rec_stim_control_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (rec_stim_control)
rf_data_t *rf_w_icons_top_t::rec_stim_control_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask0_p1
rf_w_icons_top_t::stim_mask0_p1_t::stim_mask0_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask0_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask0_p1)
rf_w_icons_top_t::stim_mask0_p1_t& rf_w_icons_top_t::stim_mask0_p1_t::operator=(w_icons_top_stim_mask0_p1_t rhs)
{
    union {
        w_icons_top_stim_mask0_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask0_p1)
rf_w_icons_top_t::stim_mask0_p1_t::operator w_icons_top_stim_mask0_p1_t () {
    union {
        w_icons_top_stim_mask0_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask0_p1)
rf_data_t *rf_w_icons_top_t::stim_mask0_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask0_p2
rf_w_icons_top_t::stim_mask0_p2_t::stim_mask0_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask0_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask0_p2)
rf_w_icons_top_t::stim_mask0_p2_t& rf_w_icons_top_t::stim_mask0_p2_t::operator=(w_icons_top_stim_mask0_p2_t rhs)
{
    union {
        w_icons_top_stim_mask0_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask0_p2)
rf_w_icons_top_t::stim_mask0_p2_t::operator w_icons_top_stim_mask0_p2_t () {
    union {
        w_icons_top_stim_mask0_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask0_p2)
rf_data_t *rf_w_icons_top_t::stim_mask0_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask1_p1
rf_w_icons_top_t::stim_mask1_p1_t::stim_mask1_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask1_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask1_p1)
rf_w_icons_top_t::stim_mask1_p1_t& rf_w_icons_top_t::stim_mask1_p1_t::operator=(w_icons_top_stim_mask1_p1_t rhs)
{
    union {
        w_icons_top_stim_mask1_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask1_p1)
rf_w_icons_top_t::stim_mask1_p1_t::operator w_icons_top_stim_mask1_p1_t () {
    union {
        w_icons_top_stim_mask1_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask1_p1)
rf_data_t *rf_w_icons_top_t::stim_mask1_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask1_p2
rf_w_icons_top_t::stim_mask1_p2_t::stim_mask1_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask1_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask1_p2)
rf_w_icons_top_t::stim_mask1_p2_t& rf_w_icons_top_t::stim_mask1_p2_t::operator=(w_icons_top_stim_mask1_p2_t rhs)
{
    union {
        w_icons_top_stim_mask1_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask1_p2)
rf_w_icons_top_t::stim_mask1_p2_t::operator w_icons_top_stim_mask1_p2_t () {
    union {
        w_icons_top_stim_mask1_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask1_p2)
rf_data_t *rf_w_icons_top_t::stim_mask1_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask2_p1
rf_w_icons_top_t::stim_mask2_p1_t::stim_mask2_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask2_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask2_p1)
rf_w_icons_top_t::stim_mask2_p1_t& rf_w_icons_top_t::stim_mask2_p1_t::operator=(w_icons_top_stim_mask2_p1_t rhs)
{
    union {
        w_icons_top_stim_mask2_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask2_p1)
rf_w_icons_top_t::stim_mask2_p1_t::operator w_icons_top_stim_mask2_p1_t () {
    union {
        w_icons_top_stim_mask2_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask2_p1)
rf_data_t *rf_w_icons_top_t::stim_mask2_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask2_p2
rf_w_icons_top_t::stim_mask2_p2_t::stim_mask2_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask2_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask2_p2)
rf_w_icons_top_t::stim_mask2_p2_t& rf_w_icons_top_t::stim_mask2_p2_t::operator=(w_icons_top_stim_mask2_p2_t rhs)
{
    union {
        w_icons_top_stim_mask2_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask2_p2)
rf_w_icons_top_t::stim_mask2_p2_t::operator w_icons_top_stim_mask2_p2_t () {
    union {
        w_icons_top_stim_mask2_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask2_p2)
rf_data_t *rf_w_icons_top_t::stim_mask2_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask3_p1
rf_w_icons_top_t::stim_mask3_p1_t::stim_mask3_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask3_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask3_p1)
rf_w_icons_top_t::stim_mask3_p1_t& rf_w_icons_top_t::stim_mask3_p1_t::operator=(w_icons_top_stim_mask3_p1_t rhs)
{
    union {
        w_icons_top_stim_mask3_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask3_p1)
rf_w_icons_top_t::stim_mask3_p1_t::operator w_icons_top_stim_mask3_p1_t () {
    union {
        w_icons_top_stim_mask3_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask3_p1)
rf_data_t *rf_w_icons_top_t::stim_mask3_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask3_p2
rf_w_icons_top_t::stim_mask3_p2_t::stim_mask3_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask3_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask3_p2)
rf_w_icons_top_t::stim_mask3_p2_t& rf_w_icons_top_t::stim_mask3_p2_t::operator=(w_icons_top_stim_mask3_p2_t rhs)
{
    union {
        w_icons_top_stim_mask3_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask3_p2)
rf_w_icons_top_t::stim_mask3_p2_t::operator w_icons_top_stim_mask3_p2_t () {
    union {
        w_icons_top_stim_mask3_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask3_p2)
rf_data_t *rf_w_icons_top_t::stim_mask3_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask4_p1
rf_w_icons_top_t::stim_mask4_p1_t::stim_mask4_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask4_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask4_p1)
rf_w_icons_top_t::stim_mask4_p1_t& rf_w_icons_top_t::stim_mask4_p1_t::operator=(w_icons_top_stim_mask4_p1_t rhs)
{
    union {
        w_icons_top_stim_mask4_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask4_p1)
rf_w_icons_top_t::stim_mask4_p1_t::operator w_icons_top_stim_mask4_p1_t () {
    union {
        w_icons_top_stim_mask4_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask4_p1)
rf_data_t *rf_w_icons_top_t::stim_mask4_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask4_p2
rf_w_icons_top_t::stim_mask4_p2_t::stim_mask4_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask4_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask4_p2)
rf_w_icons_top_t::stim_mask4_p2_t& rf_w_icons_top_t::stim_mask4_p2_t::operator=(w_icons_top_stim_mask4_p2_t rhs)
{
    union {
        w_icons_top_stim_mask4_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask4_p2)
rf_w_icons_top_t::stim_mask4_p2_t::operator w_icons_top_stim_mask4_p2_t () {
    union {
        w_icons_top_stim_mask4_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask4_p2)
rf_data_t *rf_w_icons_top_t::stim_mask4_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask5_p1
rf_w_icons_top_t::stim_mask5_p1_t::stim_mask5_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask5_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask5_p1)
rf_w_icons_top_t::stim_mask5_p1_t& rf_w_icons_top_t::stim_mask5_p1_t::operator=(w_icons_top_stim_mask5_p1_t rhs)
{
    union {
        w_icons_top_stim_mask5_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask5_p1)
rf_w_icons_top_t::stim_mask5_p1_t::operator w_icons_top_stim_mask5_p1_t () {
    union {
        w_icons_top_stim_mask5_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask5_p1)
rf_data_t *rf_w_icons_top_t::stim_mask5_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask5_p2
rf_w_icons_top_t::stim_mask5_p2_t::stim_mask5_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask5_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask5_p2)
rf_w_icons_top_t::stim_mask5_p2_t& rf_w_icons_top_t::stim_mask5_p2_t::operator=(w_icons_top_stim_mask5_p2_t rhs)
{
    union {
        w_icons_top_stim_mask5_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask5_p2)
rf_w_icons_top_t::stim_mask5_p2_t::operator w_icons_top_stim_mask5_p2_t () {
    union {
        w_icons_top_stim_mask5_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask5_p2)
rf_data_t *rf_w_icons_top_t::stim_mask5_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask6_p1
rf_w_icons_top_t::stim_mask6_p1_t::stim_mask6_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask6_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask6_p1)
rf_w_icons_top_t::stim_mask6_p1_t& rf_w_icons_top_t::stim_mask6_p1_t::operator=(w_icons_top_stim_mask6_p1_t rhs)
{
    union {
        w_icons_top_stim_mask6_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask6_p1)
rf_w_icons_top_t::stim_mask6_p1_t::operator w_icons_top_stim_mask6_p1_t () {
    union {
        w_icons_top_stim_mask6_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask6_p1)
rf_data_t *rf_w_icons_top_t::stim_mask6_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask6_p2
rf_w_icons_top_t::stim_mask6_p2_t::stim_mask6_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask6_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask6_p2)
rf_w_icons_top_t::stim_mask6_p2_t& rf_w_icons_top_t::stim_mask6_p2_t::operator=(w_icons_top_stim_mask6_p2_t rhs)
{
    union {
        w_icons_top_stim_mask6_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask6_p2)
rf_w_icons_top_t::stim_mask6_p2_t::operator w_icons_top_stim_mask6_p2_t () {
    union {
        w_icons_top_stim_mask6_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask6_p2)
rf_data_t *rf_w_icons_top_t::stim_mask6_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask7_p1
rf_w_icons_top_t::stim_mask7_p1_t::stim_mask7_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask7_g1   (*this,  0, 31)
{}

// overload assignment operator (stim_mask7_p1)
rf_w_icons_top_t::stim_mask7_p1_t& rf_w_icons_top_t::stim_mask7_p1_t::operator=(w_icons_top_stim_mask7_p1_t rhs)
{
    union {
        w_icons_top_stim_mask7_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask7_p1)
rf_w_icons_top_t::stim_mask7_p1_t::operator w_icons_top_stim_mask7_p1_t () {
    union {
        w_icons_top_stim_mask7_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask7_p1)
rf_data_t *rf_w_icons_top_t::stim_mask7_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_mask7_p2
rf_w_icons_top_t::stim_mask7_p2_t::stim_mask7_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    stim_mask7_g2   (*this,  0, 31)
{}

// overload assignment operator (stim_mask7_p2)
rf_w_icons_top_t::stim_mask7_p2_t& rf_w_icons_top_t::stim_mask7_p2_t::operator=(w_icons_top_stim_mask7_p2_t rhs)
{
    union {
        w_icons_top_stim_mask7_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_mask7_p2)
rf_w_icons_top_t::stim_mask7_p2_t::operator w_icons_top_stim_mask7_p2_t () {
    union {
        w_icons_top_stim_mask7_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_mask7_p2)
rf_data_t *rf_w_icons_top_t::stim_mask7_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor enabled_ch_rec_g1
rf_w_icons_top_t::enabled_ch_rec_g1_t::enabled_ch_rec_g1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    en_rec_ch_g1    (*this,  0, 31)
{}

// overload assignment operator (enabled_ch_rec_g1)
rf_w_icons_top_t::enabled_ch_rec_g1_t& rf_w_icons_top_t::enabled_ch_rec_g1_t::operator=(w_icons_top_enabled_ch_rec_g1_t rhs)
{
    union {
        w_icons_top_enabled_ch_rec_g1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (enabled_ch_rec_g1)
rf_w_icons_top_t::enabled_ch_rec_g1_t::operator w_icons_top_enabled_ch_rec_g1_t () {
    union {
        w_icons_top_enabled_ch_rec_g1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (enabled_ch_rec_g1)
rf_data_t *rf_w_icons_top_t::enabled_ch_rec_g1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor enabled_ch_rec_g2
rf_w_icons_top_t::enabled_ch_rec_g2_t::enabled_ch_rec_g2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t        (rf, addr, unused_mask),
    // registers constructor:,
    en_rec_ch_g2    (*this,  0, 31)
{}

// overload assignment operator (enabled_ch_rec_g2)
rf_w_icons_top_t::enabled_ch_rec_g2_t& rf_w_icons_top_t::enabled_ch_rec_g2_t::operator=(w_icons_top_enabled_ch_rec_g2_t rhs)
{
    union {
        w_icons_top_enabled_ch_rec_g2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (enabled_ch_rec_g2)
rf_w_icons_top_t::enabled_ch_rec_g2_t::operator w_icons_top_enabled_ch_rec_g2_t () {
    union {
        w_icons_top_enabled_ch_rec_g2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (enabled_ch_rec_g2)
rf_data_t *rf_w_icons_top_t::enabled_ch_rec_g2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor rec_discharge_control
rf_w_icons_top_t::rec_discharge_control_t::rec_discharge_control_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t          (rf, addr, unused_mask),
    // registers constructor:,
    div_clk_discharge (*this,  0,  7),
    en_clk_discharge  (*this,  8,  8),
    pw_discharge      (*this, 12, 31)
{}

// overload assignment operator (rec_discharge_control)
rf_w_icons_top_t::rec_discharge_control_t& rf_w_icons_top_t::rec_discharge_control_t::operator=(w_icons_top_rec_discharge_control_t rhs)
{
    union {
        w_icons_top_rec_discharge_control_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (rec_discharge_control)
rf_w_icons_top_t::rec_discharge_control_t::operator w_icons_top_rec_discharge_control_t () {
    union {
        w_icons_top_rec_discharge_control_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (rec_discharge_control)
rf_data_t *rf_w_icons_top_t::rec_discharge_control_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch0_p0
rf_w_icons_top_t::stim_ch0_p0_t::stim_ch0_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t          (rf, addr, unused_mask),
    // registers constructor:,
    stim0_interval    (*this,  0, 15),
    stim0_ia_mux      (*this, 16, 23),
    stim0_ic          (*this, 24, 31)
{}

// overload assignment operator (stim_ch0_p0)
rf_w_icons_top_t::stim_ch0_p0_t& rf_w_icons_top_t::stim_ch0_p0_t::operator=(w_icons_top_stim_ch0_p0_t rhs)
{
    union {
        w_icons_top_stim_ch0_p0_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch0_p0)
rf_w_icons_top_t::stim_ch0_p0_t::operator w_icons_top_stim_ch0_p0_t () {
    union {
        w_icons_top_stim_ch0_p0_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch0_p0)
rf_data_t *rf_w_icons_top_t::stim_ch0_p0_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch0_pulse_p1
rf_w_icons_top_t::stim_ch0_pulse_p1_t::stim_ch0_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim0_pulse_wc     (*this,  0, 13),
    stim0_pulse_wa_mux (*this, 16, 29)
{}

// overload assignment operator (stim_ch0_pulse_p1)
rf_w_icons_top_t::stim_ch0_pulse_p1_t& rf_w_icons_top_t::stim_ch0_pulse_p1_t::operator=(w_icons_top_stim_ch0_pulse_p1_t rhs)
{
    union {
        w_icons_top_stim_ch0_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch0_pulse_p1)
rf_w_icons_top_t::stim_ch0_pulse_p1_t::operator w_icons_top_stim_ch0_pulse_p1_t () {
    union {
        w_icons_top_stim_ch0_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch0_pulse_p1)
rf_data_t *rf_w_icons_top_t::stim_ch0_pulse_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch0_pulse_p2
rf_w_icons_top_t::stim_ch0_pulse_p2_t::stim_ch0_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim0_pulse_gap    (*this,  0, 13),
    stim0_pulse_num    (*this, 16, 27),
    stim0_pol          (*this, 30, 30),
    stim0_range        (*this, 31, 31)
{}

// overload assignment operator (stim_ch0_pulse_p2)
rf_w_icons_top_t::stim_ch0_pulse_p2_t& rf_w_icons_top_t::stim_ch0_pulse_p2_t::operator=(w_icons_top_stim_ch0_pulse_p2_t rhs)
{
    union {
        w_icons_top_stim_ch0_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch0_pulse_p2)
rf_w_icons_top_t::stim_ch0_pulse_p2_t::operator w_icons_top_stim_ch0_pulse_p2_t () {
    union {
        w_icons_top_stim_ch0_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch0_pulse_p2)
rf_data_t *rf_w_icons_top_t::stim_ch0_pulse_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch1_p0
rf_w_icons_top_t::stim_ch1_p0_t::stim_ch1_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim1_interval     (*this,  0, 15),
    stim1_ia_mux       (*this, 16, 23),
    stim1_ic           (*this, 24, 31)
{}

// overload assignment operator (stim_ch1_p0)
rf_w_icons_top_t::stim_ch1_p0_t& rf_w_icons_top_t::stim_ch1_p0_t::operator=(w_icons_top_stim_ch1_p0_t rhs)
{
    union {
        w_icons_top_stim_ch1_p0_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch1_p0)
rf_w_icons_top_t::stim_ch1_p0_t::operator w_icons_top_stim_ch1_p0_t () {
    union {
        w_icons_top_stim_ch1_p0_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch1_p0)
rf_data_t *rf_w_icons_top_t::stim_ch1_p0_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch1_pulse_p1
rf_w_icons_top_t::stim_ch1_pulse_p1_t::stim_ch1_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim1_pulse_wc     (*this,  0, 13),
    stim1_pulse_wa_mux (*this, 16, 29)
{}

// overload assignment operator (stim_ch1_pulse_p1)
rf_w_icons_top_t::stim_ch1_pulse_p1_t& rf_w_icons_top_t::stim_ch1_pulse_p1_t::operator=(w_icons_top_stim_ch1_pulse_p1_t rhs)
{
    union {
        w_icons_top_stim_ch1_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch1_pulse_p1)
rf_w_icons_top_t::stim_ch1_pulse_p1_t::operator w_icons_top_stim_ch1_pulse_p1_t () {
    union {
        w_icons_top_stim_ch1_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch1_pulse_p1)
rf_data_t *rf_w_icons_top_t::stim_ch1_pulse_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch1_pulse_p2
rf_w_icons_top_t::stim_ch1_pulse_p2_t::stim_ch1_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim1_pulse_gap    (*this,  0, 13),
    stim1_pulse_num    (*this, 16, 27),
    stim1_pol          (*this, 30, 30),
    stim1_range        (*this, 31, 31)
{}

// overload assignment operator (stim_ch1_pulse_p2)
rf_w_icons_top_t::stim_ch1_pulse_p2_t& rf_w_icons_top_t::stim_ch1_pulse_p2_t::operator=(w_icons_top_stim_ch1_pulse_p2_t rhs)
{
    union {
        w_icons_top_stim_ch1_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch1_pulse_p2)
rf_w_icons_top_t::stim_ch1_pulse_p2_t::operator w_icons_top_stim_ch1_pulse_p2_t () {
    union {
        w_icons_top_stim_ch1_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch1_pulse_p2)
rf_data_t *rf_w_icons_top_t::stim_ch1_pulse_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch2_p0
rf_w_icons_top_t::stim_ch2_p0_t::stim_ch2_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim2_interval     (*this,  0, 15),
    stim2_ia_mux       (*this, 16, 23),
    stim2_ic           (*this, 24, 31)
{}

// overload assignment operator (stim_ch2_p0)
rf_w_icons_top_t::stim_ch2_p0_t& rf_w_icons_top_t::stim_ch2_p0_t::operator=(w_icons_top_stim_ch2_p0_t rhs)
{
    union {
        w_icons_top_stim_ch2_p0_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch2_p0)
rf_w_icons_top_t::stim_ch2_p0_t::operator w_icons_top_stim_ch2_p0_t () {
    union {
        w_icons_top_stim_ch2_p0_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch2_p0)
rf_data_t *rf_w_icons_top_t::stim_ch2_p0_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch2_pulse_p1
rf_w_icons_top_t::stim_ch2_pulse_p1_t::stim_ch2_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim2_pulse_wc     (*this,  0, 13),
    stim2_pulse_wa_mux (*this, 16, 29)
{}

// overload assignment operator (stim_ch2_pulse_p1)
rf_w_icons_top_t::stim_ch2_pulse_p1_t& rf_w_icons_top_t::stim_ch2_pulse_p1_t::operator=(w_icons_top_stim_ch2_pulse_p1_t rhs)
{
    union {
        w_icons_top_stim_ch2_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch2_pulse_p1)
rf_w_icons_top_t::stim_ch2_pulse_p1_t::operator w_icons_top_stim_ch2_pulse_p1_t () {
    union {
        w_icons_top_stim_ch2_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch2_pulse_p1)
rf_data_t *rf_w_icons_top_t::stim_ch2_pulse_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch2_pulse_p2
rf_w_icons_top_t::stim_ch2_pulse_p2_t::stim_ch2_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim2_pulse_gap    (*this,  0, 13),
    stim2_pulse_num    (*this, 16, 27),
    stim2_pol          (*this, 30, 30),
    stim2_range        (*this, 31, 31)
{}

// overload assignment operator (stim_ch2_pulse_p2)
rf_w_icons_top_t::stim_ch2_pulse_p2_t& rf_w_icons_top_t::stim_ch2_pulse_p2_t::operator=(w_icons_top_stim_ch2_pulse_p2_t rhs)
{
    union {
        w_icons_top_stim_ch2_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch2_pulse_p2)
rf_w_icons_top_t::stim_ch2_pulse_p2_t::operator w_icons_top_stim_ch2_pulse_p2_t () {
    union {
        w_icons_top_stim_ch2_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch2_pulse_p2)
rf_data_t *rf_w_icons_top_t::stim_ch2_pulse_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch3_p0
rf_w_icons_top_t::stim_ch3_p0_t::stim_ch3_p0_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim3_interval     (*this,  0, 15),
    stim3_ia_mux       (*this, 16, 23),
    stim3_ic           (*this, 24, 31)
{}

// overload assignment operator (stim_ch3_p0)
rf_w_icons_top_t::stim_ch3_p0_t& rf_w_icons_top_t::stim_ch3_p0_t::operator=(w_icons_top_stim_ch3_p0_t rhs)
{
    union {
        w_icons_top_stim_ch3_p0_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch3_p0)
rf_w_icons_top_t::stim_ch3_p0_t::operator w_icons_top_stim_ch3_p0_t () {
    union {
        w_icons_top_stim_ch3_p0_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch3_p0)
rf_data_t *rf_w_icons_top_t::stim_ch3_p0_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch3_pulse_p1
rf_w_icons_top_t::stim_ch3_pulse_p1_t::stim_ch3_pulse_p1_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim3_pulse_wc     (*this,  0, 13),
    stim3_pulse_wa_mux (*this, 16, 29)
{}

// overload assignment operator (stim_ch3_pulse_p1)
rf_w_icons_top_t::stim_ch3_pulse_p1_t& rf_w_icons_top_t::stim_ch3_pulse_p1_t::operator=(w_icons_top_stim_ch3_pulse_p1_t rhs)
{
    union {
        w_icons_top_stim_ch3_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch3_pulse_p1)
rf_w_icons_top_t::stim_ch3_pulse_p1_t::operator w_icons_top_stim_ch3_pulse_p1_t () {
    union {
        w_icons_top_stim_ch3_pulse_p1_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch3_pulse_p1)
rf_data_t *rf_w_icons_top_t::stim_ch3_pulse_p1_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

// constructor stim_ch3_pulse_p2
rf_w_icons_top_t::stim_ch3_pulse_p2_t::stim_ch3_pulse_p2_t (regfile_t &rf, rf_addr_t addr, rf_data_t unused_mask) :
    // entry constructor:
    _entry_t           (rf, addr, unused_mask),
    // registers constructor:,
    stim3_pulse_gap    (*this,  0, 13),
    stim3_pulse_num    (*this, 16, 27),
    stim3_pol          (*this, 30, 30),
    stim3_range        (*this, 31, 31)
{}

// overload assignment operator (stim_ch3_pulse_p2)
rf_w_icons_top_t::stim_ch3_pulse_p2_t& rf_w_icons_top_t::stim_ch3_pulse_p2_t::operator=(w_icons_top_stim_ch3_pulse_p2_t rhs)
{
    union {
        w_icons_top_stim_ch3_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.s = rhs;

    _entry_t_write (temp.i);
    return *this;
}

// overload type conversion operator (stim_ch3_pulse_p2)
rf_w_icons_top_t::stim_ch3_pulse_p2_t::operator w_icons_top_stim_ch3_pulse_p2_t () {
    union {
        w_icons_top_stim_ch3_pulse_p2_t s;
        rf_data_t i;
    } temp;
    temp.i = _entry_t_read ();

    return temp.s;
}

// overload address of operator (stim_ch3_pulse_p2)
rf_data_t *rf_w_icons_top_t::stim_ch3_pulse_p2_t::operator&()
{
    return (rf_data_t *)(uintptr_t)_entry_t_addr();
}

/* icglue keep begin custom-decl *//* icglue keep end */

